# == Schema Information
#
# Table name: mangos
#
#  id         :integer          not null, primary key
#  session    :integer
#  visit      :text(65535)
#  expire     :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mango < ApplicationRecord

 def self.without_session product
 session_key = rand(10*24-10)+10
 Mango.create(session:session_key,visit:product ,expire:Time.now + 30*60)
 session_key
 end


 def self.session product, session
 	prof=Mango.find_by(session: session)
	visitx = prof.visit
	visitx += ",#{product}"
	prof.update_attributes(visit: visitx)
 end



end
