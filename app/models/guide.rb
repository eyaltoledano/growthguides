# == Schema Information
#
# Table name: guides
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  author                :string(255)
#  description           :text
#  price                 :integer
#  availability          :boolean          default(FALSE)
#  created_at            :datetime
#  updated_at            :datetime
#  user_id               :integer
#  longdescription       :text
#  image_file_name       :string(255)
#  image_content_type    :string(255)
#  image_file_size       :integer
#  image_updated_at      :datetime
#  resource_file_name    :string(255)
#  resource_content_type :string(255)
#  resource_file_size    :integer
#  resource_updated_at   :datetime
#  category_id           :integer
#  slug                  :string(255)
#

class Guide < ActiveRecord::Base

	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders]

	has_many :sales
	belongs_to :category
	belongs_to :user
	has_attached_file :image
	has_attached_file :resource

	validates_attachment_content_type :image, 
	content_type:  /^image\/(png|gif|jpeg)/,
	message: "Only images allowed (PNG, GIF or JPEG)."
	 
	validates_attachment_content_type :resource,
	content_type: ['application/pdf'],
	message: "Only PDFs allowed"
	 
	validates :image, attachment_presence: true
	# validates :resource, attachment_presence: true

	# validates_numericality_of :price,
	# greater_than: 49, message: "Must be at least 50 cents"

	
end
