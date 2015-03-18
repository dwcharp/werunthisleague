class AddPasswordHashToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :password_hash, :string
    remove_column :coaches, :password
  end
end
