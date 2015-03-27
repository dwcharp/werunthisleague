class AddAttrsToGames < ActiveRecord::Migration
  def change
    add_column :games, :title, :string
    add_column :games, :description, :string
  end
end
