class BookingsController < ApplicationController

  before_action :set_booking, only: %i[show edit update]


  def show
    @review = Review.new
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
      redirect_to booking_path(@booking)
      # redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    # @booking.status = "confirmed"
    if @booking.update(status: params[:status])
      redirect_to dashboard_path
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
