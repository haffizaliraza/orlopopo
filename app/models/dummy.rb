# == Schema Information
#
# Table name: dummies
#
#  id         :integer          not null, primary key
#  fis_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dummy < ApplicationRecord
end
