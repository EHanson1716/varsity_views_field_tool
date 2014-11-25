class EventTitlesController < ApplicationController
  def index
    @event_titles = EventTitle.all
  end

  def show
    @event_title = EventTitle.find(params[:id])
  end

  def new
    @event_title = EventTitle.new
  end

  def create
    @event_title = EventTitle.new
    @event_title.title = params[:title]

    if @event_title.save
      redirect_to "/event_titles", :notice => "Event title created successfully."
    else
      render 'new'
    end
  end

  def edit
    @event_title = EventTitle.find(params[:id])
  end

  def update
    @event_title = EventTitle.find(params[:id])

    @event_title.title = params[:title]

    if @event_title.save
      redirect_to "/event_titles", :notice => "Event title updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event_title = EventTitle.find(params[:id])

    @event_title.destroy

    redirect_to "/event_titles", :notice => "Event title deleted."
  end
end
