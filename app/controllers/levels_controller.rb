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
    @level = Level.new
    @level.level = params[:level]

    if @level.save
      redirect_to "/levels", :notice => "Level created successfully."
    else
      render 'new'
    end
  end

  def edit
    @level = Level.find(params[:id])
  end

  def update
    @level = Level.find(params[:id])

    @level.level = params[:level]

    if @level.save
      redirect_to "/levels", :notice => "Level updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @level = Level.find(params[:id])

    @level.destroy

    redirect_to "/levels", :notice => "Level deleted."
  end
end
