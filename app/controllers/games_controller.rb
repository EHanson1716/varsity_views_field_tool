class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new
    @game.photographer_id = params[:photographer_id]
    @game.date = params[:date]
    @game.time = params[:time]
    @game.location_id = params[:location_id]
    @game.sport_id = params[:sport_id]
    @game.level_id = params[:level_id]
    @game.gender_id = params[:gender_id]
    @game.home_id = params[:home_id]
    @game.away_id = params[:away_id]
    @game.event_title_id = params[:event_title_id]
    @game.check_in_time = params[:check_in_time]
    @game.check_out_time = params[:check_out_time]
    @game.comments = params[:comments]
    @game.photos_submitted = params[:photos_submitted]
    @game.game_paid = params[:game_paid]
    @game.rainout = params[:rainout]
    @game.denied_entry = params[:denied_entry]
    @game.equipment_failure = params[:equipment_failure]

    if @game.save
      redirect_to "/games", :notice => "Game created successfully."
    else
      render 'new'
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    @game.photographer_id = params[:photographer_id]
    @game.date = params[:date]
    @game.time = params[:time]
    @game.location_id = params[:location_id]
    @game.sport_id = params[:sport_id]
    @game.level_id = params[:level_id]
    @game.gender_id = params[:gender_id]
    @game.home_id = params[:home_id]
    @game.away_id = params[:away_id]
    @game.event_title_id = params[:event_title_id]
    @game.check_in_time = params[:check_in_time]
    @game.check_out_time = params[:check_out_time]
    @game.comments = params[:comments]
    @game.photos_submitted = params[:photos_submitted]
    @game.game_paid = params[:game_paid]
    @game.rainout = params[:rainout]
    @game.denied_entry = params[:denied_entry]
    @game.equipment_failure = params[:equipment_failure]

    if @game.save
      redirect_to "/games", :notice => "Game updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @game = Game.find(params[:id])

    @game.destroy

    redirect_to "/games", :notice => "Game deleted."
  end
end
