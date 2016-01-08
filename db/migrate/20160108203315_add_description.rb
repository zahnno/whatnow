class AddDescription < ActiveRecord::Migration
  def change
  	add_column :events, :actualcost, :string
  	add_column :events, :description, :string
  end
end
