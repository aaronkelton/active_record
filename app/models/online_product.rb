# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text(65535)
#  inventory    :integer
#  price        :decimal(7, 2)
#  restocked_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  qty_sold     :integer
#  ref_num      :string(255)
#  style_id     :integer
#  category_id  :integer
#  type         :string(255)
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#  index_products_on_ref_num      (ref_num)
#  index_products_on_style_id     (style_id)
#

class OnlineProduct < Product
  def available_in_store?
    false
  end
end
