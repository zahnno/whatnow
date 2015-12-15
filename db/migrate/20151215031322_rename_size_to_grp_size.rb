class RenameSizeToGrpSize < ActiveRecord::Migration
  def change
  	rename_column :events, :size, :grpsize

  	rename_column :events, :time, :eventtime

  	rename_column :selects, :time, :sessiontime
  end
end
