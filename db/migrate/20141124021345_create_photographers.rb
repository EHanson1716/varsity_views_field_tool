class CreatePhotographers < ActiveRecord::Migration
  def change
    create_table :photographers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :paypal
      t.string :string

      t.timestamps

    end
  end
end
