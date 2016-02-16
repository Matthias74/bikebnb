class BookingsController < ApplicationController

  before_action :set_bike, only: [:new, :create]

  def index
    @bookings = current_user.booking
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking =  Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "bookings/show"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def booking_params
    params.require(:booking).permit(:status)

  end






end
