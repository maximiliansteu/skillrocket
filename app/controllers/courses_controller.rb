class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_course, only: :show

  def show
    @reviews = @course.bookings.each do |booking|
      Review.where(booking: booking)
    end
  end

  def index
    if params[:location].present? && params[:query].present?
      @courses = Course.near(params[:location], 20).global_search(params[:query])
    elsif params[:query].present?
      @courses = @courses.global_search(params[:query])
    elsif params[:location].present?
      @courses = Course.near(params[:location], 20)
    else
      @courses = Course.all
    end

    @markers = @courses.geocoded.map do |course|
      { lat: course.latitude,
        lng: course.longitude,
        info_window: render_to_string(partial: "info_window", locals: { course: course }),
        image_url: helpers.asset_url('rocket-only.png') }
    end
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :description, :price, :content, :category, :location, :user_id, :photo)
  end
end
