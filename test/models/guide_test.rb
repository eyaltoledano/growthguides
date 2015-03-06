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

require 'test_helper'

class GuideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
