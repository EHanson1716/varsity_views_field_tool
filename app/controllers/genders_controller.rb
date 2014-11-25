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
    @gender = Gender.new
    @gender.gender = params[:gender]

    if @gender.save
      redirect_to "/genders", :notice => "Gender created successfully."
    else
      render 'new'
    end
  end

  def edit
    @gender = Gender.find(params[:id])
  end

  def update
    @gender = Gender.find(params[:id])

    @gender.gender = params[:gender]

    if @gender.save
      redirect_to "/genders", :notice => "Gender updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @gender = Gender.find(params[:id])

    @gender.destroy

    redirect_to "/genders", :notice => "Gender deleted."
  end
end
