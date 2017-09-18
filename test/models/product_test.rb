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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
