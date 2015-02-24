# == Schema Information
#
# Table name: guides
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  author       :string(255)
#  description  :text
#  price        :integer
#  availability :boolean          default(FALSE)
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :integer
#

class Guide < ActiveRecord::Base

	belongs_to :user
	belongs_to :category
	has_attached_file :image
	has_attached_file :resource

	validates_attachment_content_type :image, 
	content_type:  /^image\/(png|gif|jpeg)/,
	message: "Only images allowed (PNG, GIF or JPEG)."
	 
	validates_attachment_content_type :resource,
	content_type: ['application/pdf'],
	message: "Only PDFs allowed"
	 
	validates :image, attachment_presence: true
	validates :resource, attachment_presence: true
	
end
