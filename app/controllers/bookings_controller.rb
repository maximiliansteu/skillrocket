class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @course = Course.find(params[:course_id])

    @booking.course = @course
    if @booking.save!
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit()
  end

end
