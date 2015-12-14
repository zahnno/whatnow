class CreateSelects < ActiveRecord::Migration
  def change
    create_table :selects do |t|
      t.string :group_size
      t.string :interest
      t.string :location
      t.datetime :time
      t.integer :cost

      t.timestamps null: false
    end
  end
end
