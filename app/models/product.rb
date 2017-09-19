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
#

class Product < ApplicationRecord

  default_scope { where.not(price: nil) }

  scope :recent, lambda { where(["created_at >= ?", 1.year.ago]) }

end
