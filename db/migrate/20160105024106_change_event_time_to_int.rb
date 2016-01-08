class ChangeEventTimeToInt < ActiveRecord::Migration
  def change
  	remove_column :events, :eventtime
  	add_column :events, :eventtime, :integer
  end
end
