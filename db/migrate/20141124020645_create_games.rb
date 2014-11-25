class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :photographer_id
      t.string :date
      t.string :time
      t.integer :location_id
      t.integer :sport_id
      t.integer :level_id
      t.integer :gender_id
      t.integer :home_id
      t.integer :away_id
      t.integer :event_title_id
      t.timestamp :check_in_time
      t.timestamp :check_out_time
      t.text :comments
      t.binary :photos_submitted
      t.binary :game_paid
      t.binary :rainout
      t.binary :denied_entry
      t.binary :equipment_failure

      t.timestamps

    end
  end
end
