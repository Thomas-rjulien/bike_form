class BookingController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  booking_parameters = %i[name email comment heights checkin checkout baby_chair spd_pedals insurance hitch_bike_racks trunk_bike_rack]

  def set_booking_params
    params.require(:booking).permit(booking_parameters)
  end
end
