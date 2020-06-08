class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.references :guest, null: false, foreign_key: {to_table: :users}
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
