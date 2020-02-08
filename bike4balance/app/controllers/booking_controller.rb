class BookingController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(set_booking_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
  end

  def destroy
  end

  private

  def set_booking_params
    booking_parameters = %i[name email comment heights checkin checkout baby_chair spd_pedals insurance hitch_bike_racks trunk_bike_rack]
    params.require(:booking).permit(booking_parameters)
  end
end
