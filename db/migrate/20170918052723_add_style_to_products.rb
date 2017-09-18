class AddStyleToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :style, index: true
  end
end
