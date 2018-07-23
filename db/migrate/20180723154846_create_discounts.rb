class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.date :start_date
      t.date :end_date
      t.integer :percent
      t.references :shoe, foreign_key: true

      t.timestamps
    end
  end
end
