require_relative '20170918061614_add_foreign_key_to_products'
class RevertAddForeignKeyToProducts < ActiveRecord::Migration[5.1]
  def change
    revert AddForeignKeyToProducts
  end
end
