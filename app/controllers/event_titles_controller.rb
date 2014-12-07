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
   if current_photographer.try(:admin_status?)
      @event_title = EventTitle.new
      @event_title.title = params[:title]

      if @event_title.save
        redirect_to "/event_titles", :notice => "Event title created successfully."
      else
        render 'new'
      end
    else
      render 'not_admin'
    end
  end

  def edit
   if current_photographer.try(:admin_status?)
      @event_title = EventTitle.find(params[:id])
    else
      render 'not_admin'
    end
  end

  def update
   if current_photographer.try(:admin_status?)
      @event_title = EventTitle.find(params[:id])

      @event_title.title = params[:title]

      if @event_title.save
        redirect_to "/event_titles", :notice => "Event title updated successfully."
      else
        render 'edit'
      end
    else
      render 'not_admin'
    end
  end

  def destroy
   if current_photographer.try(:admin_status?)
      @event_title = EventTitle.find(params[:id])

      @event_title.destroy

      redirect_to "/event_titles", :notice => "Event title deleted."
    else
      render 'not_admin'
    end
  end
end
