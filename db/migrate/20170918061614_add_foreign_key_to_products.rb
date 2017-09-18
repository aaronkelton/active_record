class AddForeignKeyToProducts < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :products, :style
  end
end
