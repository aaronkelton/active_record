require '20170918052723_add_style_to_products'

class RevertAddStyleToProducts < ActiveRecord::Migration[5.1]

  def change
    revert AddStyleToProducts
  end

end
