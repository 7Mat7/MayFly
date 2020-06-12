class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @places = policy_scope(Place)
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place }),
        image_url: helpers.asset_url('logo.png')
      }
    end

     if params[:query].present?
      sql_query = " \
        places.name @@ :query \
        OR places.location @@ :query \
      "
      @places = Place.where(sql_query, query: "%#{params[:query]}%")
    else
      @places = Place.all
     end
  end

  def show
    @booking = Booking.new
  end

  def new
    @place = Place.new
    authorize(@place)
  end

  def create
    @place = Place.new(place_params)
    @place.renter = current_user
    authorize(@place)

    if @place.save!
      redirect_to place_path(@place), notice: 'Place was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to @place, notice: 'Place was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @place.destroy
    redirect_to places_url, notice: 'Place was successfully destroyed.'
  end

  def list
  end

  private

  def set_place
    @place = Place.find(params[:id])
    authorize(@place)
  end

  def place_params
    params.require(:place).permit(:description, :price, :location, :size, :renter_id, :name, photos: [])
  end
end
