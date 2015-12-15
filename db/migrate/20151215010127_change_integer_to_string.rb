class ChangeIntegerToString < ActiveRecord::Migration
  def change
  	change_column :events, :size, :string
  end
end
