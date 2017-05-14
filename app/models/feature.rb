# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Feature < ApplicationRecord
	has_and_belongs_to_many :listings
end
