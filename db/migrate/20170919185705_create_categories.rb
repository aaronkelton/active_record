class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
  end

  add_reference :products, :category, index: true

  reversible do |dir|
    dir.up do
      say "Creating initial categories"
      cat1 = Category.create(name: "Furniture")
      cat2 = Category.create(name: "Clothes")

      say "Assigning products to categories"
      Product.where.not(name: "Green shirt").update_all(category_id: cat1.id)
      Product.where(name: "Green shirt").update_all(category_id: cat2.id)
    end
    dir.down do
      # data will be deleted when table and column are removed
    end

  end
end
