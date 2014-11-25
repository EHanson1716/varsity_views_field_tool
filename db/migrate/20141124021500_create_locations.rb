class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :short_name
      t.string :long_name
      t.string :address
      t.string :city
      t.string :state
      t.string :main_phone
      t.string :rainout_phone
      t.string :website

      t.timestamps

    end
  end
end
