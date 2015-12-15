class RenameType < ActiveRecord::Migration
  def change
  	rename_column :events, :type, :category
  end
end
