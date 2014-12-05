class GamesController < ApplicationController
  def index
    @games = Game.where(:photographer_id => current_photographer.id)
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

  def check_in
    @game = Game.find(params[:id])
    if @game.check_in_time.present? != true
      Game.update(params[:id], 'check_in_time' => Time.now)
      redirect_to "/games/#{params[:id]}", :notice => "You are now checked in!"
    else
      redirect_to "/games/#{params[:id]}", :notice => "You are already checked in! You can only check in to a game once."
    end
  end

  def check_out
    @game = Game.find(params[:id])
    if @game.check_out_time.present? != true
      Game.update(params[:id], 'check_out_time' => Time.now)
      redirect_to "/games/#{params[:id]}", :notice => "You are now checked out!"
    else
      redirect_to "/games/#{params[:id]}", :notice => "You are already checked out! You can only check out of a game once."
    end
  end

  def rainout
    @game = Game.find(params[:id])
    if @game.rainout != 'true'
      Game.update(params[:id], 'rainout' => 'true')
      redirect_to "/games/#{params[:id]}", :notice => "Sorry about the bad weather. Thanks for reporting the rainout!"
    else
      Game.update(params[:id], 'rainout' => 'false')
      redirect_to "/games/#{params[:id]}", :notice => "Thanks for correcting that report! We've removed the report of a rainout."
    end
  end

  def denied_entry
    @game = Game.find(params[:id])
    if @game.denied_entry != 'true'
      Game.update(params[:id], 'denied_entry' => 'true')
      redirect_to "/games/#{params[:id]}", :notice => "Sorry about that. Thanks for reporting that you were denied entry to the game; we'll follow up with the school."
    else
      Game.update(params[:id], 'denied_entry' => 'false')
      redirect_to "/games/#{params[:id]}", :notice => "Thanks for correcting that report! We've removed the report of that you were denied entry."
    end
  end

  def equipment_failure
    @game = Game.find(params[:id])
    if @game.equipment_failure != 'true'
      Game.update(params[:id], 'equipment_failure' => 'true')
      redirect_to "/games/#{params[:id]}", :notice => "Hope your camera will be working again soon! Thanks for reporting your equipment failure issue."
    else
      Game.update(params[:id], 'equipment_failure' => 'false')
      redirect_to "/games/#{params[:id]}", :notice => "Thanks for correcting that report! We've removed the report of an equipment failure."
    end
  end


end
