class AddAdminStatusToPhotographers < ActiveRecord::Migration
  def change
    add_column :photographers, :admin_status, :binary
  end
end
