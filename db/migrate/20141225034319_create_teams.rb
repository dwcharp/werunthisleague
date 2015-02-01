class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :description
      t.string :head_coach
      t.string :logo_url
      t.string :email_address
      
      t.timestamps
    end
  end
end
