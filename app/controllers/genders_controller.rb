class GendersController < ApplicationController
  def index
    @genders = Gender.all
  end

  def show
    @gender = Gender.find(params[:id])
  end

  def new
    @gender = Gender.new
  end

  def create
   if current_photographer.try(:admin_status?)

      @gender = Gender.new
      @gender.gender = params[:gender]

      if @gender.save
        redirect_to "/genders", :notice => "Gender created successfully."
      else
        render 'new'
      end

    else
      render 'not_admin'
    end

  end

  def edit
    @gender = Gender.find(params[:id])
  end

  def update
   if current_photographer.try(:admin_status?)
      @gender = Gender.find(params[:id])

      @gender.gender = params[:gender]

      if @gender.save
        redirect_to "/genders", :notice => "Gender updated successfully."
      else
        render 'edit'
      end
    else
      render 'not_admin'
    end
  end

  def destroy
   if current_photographer.try(:admin_status?)
      @gender = Gender.find(params[:id])

      @gender.destroy

      redirect_to "/genders", :notice => "Gender deleted."
    else
      render 'not_admin'
    end
  end
end
