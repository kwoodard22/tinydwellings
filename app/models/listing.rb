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

class Listing < ApplicationRecord
	has_and_belongs_to_many :features
end
