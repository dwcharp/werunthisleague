class AddDatesToGames < ActiveRecord::Migration
  def change
    add_column :games, :start, :datetime
    add_column :games, :end, :datetime
  end
end
