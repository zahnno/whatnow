class AddLongAndLatToSelect < ActiveRecord::Migration
  def change
  	add_column :selects, :longitude, :decimal, precision: 9, scale: 6
  	add_column :selects, :latitude, :decimal, precision: 8, scale: 6
  end
end
