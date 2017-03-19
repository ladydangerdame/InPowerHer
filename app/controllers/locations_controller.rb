class LocationsController < ApplicationController

  def index
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.save
    redirect_to @location
  end

  def show

  end

  private
    def location_params
      params.require(:location).permit(:name, :description, :address1, :address2, :city, :state, :zipcode, :phone, :email)
    end

end
