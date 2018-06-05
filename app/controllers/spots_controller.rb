class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]
  def index
    @spots = Spot.where.not(latitude: nil, longitude: nil)
    @markers = @spots.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.save
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :addresse, :latitude, :longitude)
  end


end
