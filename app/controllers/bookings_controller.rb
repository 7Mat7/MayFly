class BookingsController < ApplicationController
  before_action :set_place, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.guest = current_user
    @booking.place = @place
    if @booking.save!
      redirect_to place_path(@place), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
    authorize(@place, :book?)
  end

  def booking_params
    params.require(:booking).permit(:end_date)
  end
end
