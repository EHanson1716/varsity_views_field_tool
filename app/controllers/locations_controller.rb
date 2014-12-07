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
   if current_photographer.try(:admin_status?)
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
    else
      render 'not_admin'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
   if current_photographer.try(:admin_status?)
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
    else
      render 'not_admin'
    end
  end

  def destroy
   if current_photographer.try(:admin_status?)
      @location = Location.find(params[:id])

      @location.destroy

      redirect_to "/locations", :notice => "Location deleted."
    else
      render 'not_admin'
    end
  end
end
