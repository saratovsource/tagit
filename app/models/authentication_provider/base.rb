class AuthenticationProvider::Base < ActiveRecord::Base
  belongs_to :account
  validates :provider, presence: true

  def update_info(hash)
    update_attributes({
      info: hash[:info],
      credentials: hash[:credentials],
      extra: hash[:extra]
    })
  end
end
