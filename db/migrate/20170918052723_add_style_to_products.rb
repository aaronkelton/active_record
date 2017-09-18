class AddStyleToProducts < ActiveRecord::Migration[5.1]
  def up
    add_reference :products, :style, index: true
  end

  def down
    remove_reference :products, :style, index: true
    # raise ActiveRecord::IrreversibleMigration
  end
end
