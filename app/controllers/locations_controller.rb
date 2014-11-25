class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new
    @location.short_name = params[:short_name]
    @location.long_name = params[:long_name]
    @location.address = params[:address]
    @location.city = params[:city]
    @location.state = params[:state]
    @location.main_phone = params[:main_phone]
    @location.rainout_phone = params[:rainout_phone]
    @location.website = params[:website]

    if @location.save
      redirect_to "/locations", :notice => "Location created successfully."
    else
      render 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])

    @location.short_name = params[:short_name]
    @location.long_name = params[:long_name]
    @location.address = params[:address]
    @location.city = params[:city]
    @location.state = params[:state]
    @location.main_phone = params[:main_phone]
    @location.rainout_phone = params[:rainout_phone]
    @location.website = params[:website]

    if @location.save
      redirect_to "/locations", :notice => "Location updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])

    @location.destroy

    redirect_to "/locations", :notice => "Location deleted."
  end
end
