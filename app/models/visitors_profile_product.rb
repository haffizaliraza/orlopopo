# == Schema Information
#
# Table name: visitors_profile_products
#
#  id                 :integer          not null, primary key
#  product_id         :integer
#  visitor_profile_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class VisitorsProfileProduct < ApplicationRecord
  belongs_to :product
  belongs_to :visitor_profile
end
