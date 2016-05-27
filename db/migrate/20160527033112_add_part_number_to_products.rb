class AddPartNumberToProducts < ActiveRecord::Migration
	# this file named incorrectly.
	# add timestamps to rooms
	# add phone number to users
  def change
  	add_timestamps(:rooms)
  	add_column :users, :phone_number, :string
  end
end
