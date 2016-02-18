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
    @booking.bike = @bike
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
  end

  private

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def booking_params
    params.require(:booking).permit(:accepted, :start_date, :end_date)

  end






end
