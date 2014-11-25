class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def show
    @sport = Sport.find(params[:id])
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new
    @sport.sport = params[:sport]

    if @sport.save
      redirect_to "/sports", :notice => "Sport created successfully."
    else
      render 'new'
    end
  end

  def edit
    @sport = Sport.find(params[:id])
  end

  def update
    @sport = Sport.find(params[:id])

    @sport.sport = params[:sport]

    if @sport.save
      redirect_to "/sports", :notice => "Sport updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @sport = Sport.find(params[:id])

    @sport.destroy

    redirect_to "/sports", :notice => "Sport deleted."
  end
end
