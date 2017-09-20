class AddTypeToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :type, :string

    # because we have data already, we need to seed the values
    reversible do |dir|
      dir.up do
        Product.update_all("type = 'OnlineProduct'")
      end
    end
  end
end
