# == Schema Information
#
# Table name: sales
#
#  id           :integer          not null, primary key
#  buyer_email  :string(255)
#  seller_email :string(255)
#  amount       :integer
#  guid         :string(255)
#  guide_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Sale < ActiveRecord::Base
	before_create :populate_guid
	belongs_to :guide

	private
	def populate_guid
		self.guid = SecureRandom.uuid()
	end


end
