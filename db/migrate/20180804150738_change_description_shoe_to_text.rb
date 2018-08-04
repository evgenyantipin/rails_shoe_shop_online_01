class ChangeDescriptionShoeToText < ActiveRecord::Migration[5.2]
  def up
    change_column :shoes, :description, :text
  end

  def down
    change_column :shoes, :description, :string
  end
end
