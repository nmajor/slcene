class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :status
      t.datetime :start_at
      t.datetime :end_at
      t.string :venue_name
      t.string :address
      t.string :image
      t.string :url

      t.timestamps null: false
    end
    add_index :events, :price
    add_index :events, :status
    add_index :events, :start_at
    add_index :events, :end_at
  end
end
