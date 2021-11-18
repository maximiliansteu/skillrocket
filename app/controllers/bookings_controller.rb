class BookingsController < ApplicationController

  before_action :set_booking, only: :show


  def show
    raise
  end

  def new
    @course = Course.find(params[:course_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @course = Course.find(params[:course_id])

    @booking.course = @course
    if @booking.save!
      redirect_to course_booking_path(@booking, @course)
      # redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :course_id)
  end
end
