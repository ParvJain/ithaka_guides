class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :currency
      t.string :place_type

      t.timestamps null: false
    end
  end
end
