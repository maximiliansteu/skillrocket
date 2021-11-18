class DashboardsController < ApplicationController
  def show
    @bookings = current_user.bookings

    @received_bookings = current_user.received_bookings

    # @my_courses = current_user.courses
  end
end
