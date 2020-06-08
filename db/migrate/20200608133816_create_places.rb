class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.text :description
      t.integer :price
      t.string :location
      t.integer :size
      t.references :renter, null: false, foreign_key: {to_table: :users}

      t.timestamps
  end
end
end
