class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email_address
      t.string  :phone_number
      t.string  :position
      t.string  :number
      t.string  :bio
      t.string  :throw
      t.string  :bat
      t.integer :age
      t.integer :height
      t.integer :weight
      t.string  :college
      t.string  :high_school
      t.string  :home_town
      t.integer :team_id

      t.timestamps
    end
  end
end
