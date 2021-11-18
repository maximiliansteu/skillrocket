class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_course, only: :show

  def show
    @bookings = Booking.all
    @reviews = Review.all
  end

  def index
    if params[:query].present?
      @courses = Course.global_search(params[:query])
    else
      @courses = Course.all
    end

    @markers = @courses.geocoded.map do |course|
      {
        lat: course.latitude,
        lng: course.longitude
      }
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
