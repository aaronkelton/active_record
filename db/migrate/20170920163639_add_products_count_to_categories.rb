class AddProductsCountToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :products_count, :integer, default: 0

    # necessary code for existing products to handle count
    reversible do |dir|
      dir.up do
        Category.all.each do |category|
          count = category.products.size
          # must use update_attribute b/c it is marked read-only
          category.update_attribute(:products_count, count)
        end
      end
    end

  end
end
