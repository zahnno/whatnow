class ChangeCostToString < ActiveRecord::Migration
  def change
  	change_column :events, :cost, :string
  	change_column :selects, :cost, :string
  	add_column :events, :photo, :string
  end
end
