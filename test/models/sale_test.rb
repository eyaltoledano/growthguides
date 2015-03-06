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

require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
