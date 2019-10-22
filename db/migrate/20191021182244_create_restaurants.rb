class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
  	create_table :restaurants do |table|
		table.string :name
		table.string :address
		table.integer :rating
		table.timestamps
  	end
  end
end