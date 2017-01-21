# == Schema Information
#
# Table name: importers
#
#  id         :integer          not null, primary key
#  f1         :string(255)
#  f2         :string(255)
#  f3         :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Importer < ApplicationRecord
end
