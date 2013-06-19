class AuthenticationProvider::Base < ActiveRecord::Base
  belongs_to :account
  validates :provider, presence: true
end
