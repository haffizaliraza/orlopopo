# == Schema Information
#
# Table name: visitor_profiles
#
#  id          :integer          not null, primary key
#  session_key :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class VisitorProfile < ApplicationRecord
end
