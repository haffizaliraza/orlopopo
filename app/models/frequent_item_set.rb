# == Schema Information
#
# Table name: frequent_item_sets
#
#  id         :integer          not null, primary key
#  item       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FrequentItemSet < ApplicationRecord
end
