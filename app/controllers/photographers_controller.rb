class PhotographersController < ApplicationController
  def index
    @photographers = Photographer.all
  end

  def show

    if current_photographer.try(:admin_status?)

      @photographer = Photographer.find(params[:id])

    else

      @photographer = Photographer.find(current_photographer.id)

    end

  end

  def new
    @photographer = Photographer.new
  end

  def create

      if current_photographer.try(:admin_status?)

        @photographer = Photographer.new
        @photographer.first_name = params[:first_name]
        @photographer.last_name = params[:last_name]
        @photographer.phone = params[:phone]
        @photographer.email = params[:email]
        @photographer.paypal = params[:paypal]
        @photographer.password = params[:password]

        if @photographer.save
          redirect_to "/photographers", :notice => "Photographer created successfully."
        else
          render 'new'
        end

      else
        render 'not_admin'
      end

  end

  def edit
    @photographer = Photographer.find(params[:id])
  end

  def update
   if current_photographer.try(:admin_status?)

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

    else
      render 'not_admin'
    end

  end

  def destroy
   if current_photographer.try(:admin_status?)

      @photographer = Photographer.find(params[:id])

      @photographer.destroy

      redirect_to "/photographers", :notice => "Photographer deleted."

    else
      render 'not_admin'
    end

  end
end
