class AuthenticationProvider::Base < ActiveRecord::Base
  belongs_to :account
  validates :slug, presence: true
end
