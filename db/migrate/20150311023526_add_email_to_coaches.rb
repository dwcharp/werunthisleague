class AddEmailToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :email_address, :string
  end
end
