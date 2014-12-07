class LevelsController < ApplicationController
  def index
    @levels = Level.all
  end

  def show
    @level = Level.find(params[:id])
  end

  def new
    @level = Level.new
  end

  def create
   if current_photographer.try(:admin_status?)

      @level = Level.new
      @level.level = params[:level]

      if @level.save
        redirect_to "/levels", :notice => "Level created successfully."
      else
        render 'new'
      end
    else
      render 'not_admin'
    end
  end

  def edit
    @level = Level.find(params[:id])
  end

  def update
   if current_photographer.try(:admin_status?)
      @level = Level.find(params[:id])

      @level.level = params[:level]

      if @level.save
        redirect_to "/levels", :notice => "Level updated successfully."
      else
        render 'edit'
      end
    else
      render 'not_admin'
    end
  end

  def destroy
   if current_photographer.try(:admin_status?)
      @level = Level.find(params[:id])

      @level.destroy

      redirect_to "/levels", :notice => "Level deleted."
    else
      render 'not_admin'
    end
  end
end
