class DashboardsController < ApplicationController
  def show
    #@bookings = Booking.joins(:bikes).where(bikes: { user_id: current_user.id })
    bookings = []
    current_user.bikes.each do |bike|
      bookings << bike.bookings
    end
    @bookings = bookings.flatten
    @bikes = current_user.bikes
    @rentals = current_user.bookings # as a renter
  end
end
