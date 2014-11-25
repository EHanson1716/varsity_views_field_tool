class CreateEventTitles < ActiveRecord::Migration
  def change
    create_table :event_titles do |t|
      t.string :title

      t.timestamps

    end
  end
end
