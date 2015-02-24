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
	
end
