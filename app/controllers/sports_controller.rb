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
   if current_photographer.try(:admin_status?)

      @sport = Sport.new
      @sport.sport = params[:sport]

      if @sport.save
        redirect_to "/sports", :notice => "Sport created successfully."
      else
        render 'new'
      end

    else
      render 'not_admin'
    end

  end

  def edit
    @sport = Sport.find(params[:id])
  end

  def update
   if current_photographer.try(:admin_status?)
      @sport = Sport.find(params[:id])

      @sport.sport = params[:sport]

      if @sport.save
        redirect_to "/sports", :notice => "Sport updated successfully."
      else
        render 'edit'
      end
    else
      render 'not_admin'
    end
  end

  def destroy
   if current_photographer.try(:admin_status?)

      @sport = Sport.find(params[:id])

      @sport.destroy

      redirect_to "/sports", :notice => "Sport deleted."
    else
      render 'not_admin'
    end
  end
end
