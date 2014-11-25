class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new
    @school.short_name = params[:short_name]
    @school.long_name = params[:long_name]
    @school.address = params[:address]
    @school.city = params[:city]
    @school.state = params[:state]

    if @school.save
      redirect_to "/schools", :notice => "School created successfully."
    else
      render 'new'
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])

    @school.short_name = params[:short_name]
    @school.long_name = params[:long_name]
    @school.address = params[:address]
    @school.city = params[:city]
    @school.state = params[:state]

    if @school.save
      redirect_to "/schools", :notice => "School updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @school = School.find(params[:id])

    @school.destroy

    redirect_to "/schools", :notice => "School deleted."
  end
end
