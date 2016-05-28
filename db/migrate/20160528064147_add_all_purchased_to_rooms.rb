class AddAllPurchasedToRooms < ActiveRecord::Migration
  def change
  	add_column :rooms, :all_drinks_purchased, :boolean
  end
end
