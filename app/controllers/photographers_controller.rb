class PhotographersController < ApplicationController
  def index
    @photographers = Photographer.all
  end

  def show
    @photographer = Photographer.find(params[:id])
  end

  def new
    @photographer = Photographer.new
  end

  def create
    @photographer = Photographer.new
    @photographer.first_name = params[:first_name]
    @photographer.last_name = params[:last_name]
    @photographer.phone = params[:phone]
    @photographer.email = params[:email]
    @photographer.paypal = params[:paypal]
    @photographer.string = params[:string]

    if @photographer.save
      redirect_to "/photographers", :notice => "Photographer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @photographer = Photographer.find(params[:id])
  end

  def update
    @photographer = Photographer.find(params[:id])

    @photographer.first_name = params[:first_name]
    @photographer.last_name = params[:last_name]
    @photographer.phone = params[:phone]
    @photographer.email = params[:email]
    @photographer.paypal = params[:paypal]
    @photographer.admin_status = params[:admin_status]

    if @photographer.save
      redirect_to "/photographers", :notice => "Photographer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @photographer = Photographer.find(params[:id])

    @photographer.destroy

    redirect_to "/photographers", :notice => "Photographer deleted."
  end
end
