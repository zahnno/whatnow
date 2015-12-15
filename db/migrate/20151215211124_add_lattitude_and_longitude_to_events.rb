class AddLattitudeAndLongitudeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :latitude, :decimal, :scale => 6, :precision => 8
    add_column :events, :longitude, :decimal, :scale => 6, :precision => 9
  end
end
