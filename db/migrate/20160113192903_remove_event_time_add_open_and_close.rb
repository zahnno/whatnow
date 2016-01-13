class RemoveEventTimeAddOpenAndClose < ActiveRecord::Migration
  def change
  	remove_column :events, :eventtime
  	add_column :events, :opentime, :integer
  	add_column :events, :closetime, :integer
  	add_column :events, :is_close, :string
  end
end
