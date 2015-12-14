class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :time
      t.string :type
      t.string :name
      t.integer :size
      t.string :address
      t.string :phone
      t.integer :cost
      t.string :link

      t.timestamps null: false
    end
  end
end
