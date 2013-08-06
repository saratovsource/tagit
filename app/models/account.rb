class Account < ActiveRecord::Base
  acts_as_tagger
  has_many :authentication_providers, class_name: "AuthenticationProvider::Base"
  has_many :links, inverse_of: :account
  state_machine initial: :active do
    state :active
    state :inactive
  end

  def add_provider(provider)
    self.authentication_providers << provider
  end
end
