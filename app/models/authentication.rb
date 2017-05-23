class Authentication < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :password
  validates_uniqueness_of :email
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  belongs_to :user

  def self.find_by_provider_and_uid(provider, uid)
    where(provider: provider, uid: uid).first
  end
end
