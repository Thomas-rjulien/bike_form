class BookingController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(set_booking_params)
    if @booking.save!
      redirect_to booking_show_path(@booking)
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

  def compute_price(booking)
    if booking.number_of_days == 0.5
      booking.citybike * 12 + booking.trekking * 15 + booking.gravel * 25 + booking.electric * 32
    elsif booking.number_of_days == 1
      booking.citybike * 15 + booking.trekking * 20 + booking.gravel * 32 + booking.electric * 39
    elsif booking.number_of_days == 2
      booking.citybike * 27 + booking.trekking * 35 + booking.gravel * 60 + booking.electric * 72
    elsif booking.number_of_days == 3
      booking.citybike * 39 + booking.trekking * 46 + booking.gravel * 88 + booking.electric * 105
    elsif booking.number_of_days == 4
      booking.citybike * 50 + booking.trekking * 60 + booking.gravel * 115 + booking.electric * 130
    elsif booking.number_of_days == 5
      booking.citybike * 59 + booking.trekking * 72 + booking.gravel * 135 + booking.electric * 155
    elsif booking.number_of_days == 6
      booking.citybike * 67 + booking.trekking * 84 + booking.gravel * 155 + booking.electric * 184
    elsif booking.number_of_days == 7
      booking.citybike * 75 + booking.trekking * 95 + booking.gravel * 168 + booking.electric * 205
    else
      booking.citybike * (75 + (booking.number_of_days - 7) * 6) + booking.trekking * (95 + (booking.number_of_days - 7) * 10) + booking.gravel * (168 + (booking.number_of_days - 7) * 15) + booking.electric * (205 + (booking.number_of_days - 7) * 20)
    end
  end
  helper_method :compute_price
end
