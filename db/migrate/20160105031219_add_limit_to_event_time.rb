class AddLimitToEventTime < ActiveRecord::Migration
  def change
  	change_column :events, :eventtime, :integer, limit: 8
  end
end
