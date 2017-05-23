# == Schema Information
#
# Table name: listings
#
#  id               :integer          not null, primary key
#  title            :string
#  price            :integer
#  zip_code         :integer
#  summary          :string
#  description      :text
#  currently_listed :boolean
#  date_last_listed :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
