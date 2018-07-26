class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :name
      t.integer :quantity
      t.integer :price
      t.string :description
      t.string :img_url
      t.boolean :active
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
