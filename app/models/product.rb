# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  compony_name :string(255)
#  price        :float(24)
#  link         :string(255)
#  image_link   :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Product < ApplicationRecord
	has_many :visitors_profile_products , :dependent => :destroy
end
