# == Schema Information
#
# Table name: website_links
#
#  id         :integer          not null, primary key
#  website    :string(255)
#  link       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WebsiteLink < ApplicationRecord
end
