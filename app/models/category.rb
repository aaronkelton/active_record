# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  prefix     :string(255)
#

class Category < ApplicationRecord
  has_many :products

  def prefix
    "GEN"
  end
end
