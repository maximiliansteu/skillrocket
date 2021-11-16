class CoursesController < ApplicationController

  before_action :set_course, only: :show

  def show
  end


  def index
    @courses = Course.all

  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
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
