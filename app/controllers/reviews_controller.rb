class ReviewsController < ApplicationController
  def show
    @reviews = Review.all
  end

  def new
    @course = Course.find(params[:course_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to course_path(@booking.course_id)
    else
      render 'bookings/show'
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to booking_path(@review.booking)
  # end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
