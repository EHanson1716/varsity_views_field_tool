class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :short_name
      t.string :long_name
      t.string :address
      t.string :city
      t.string :state

      t.timestamps

    end
  end
end
