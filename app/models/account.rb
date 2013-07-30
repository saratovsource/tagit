class Account < ActiveRecord::Base
  has_many :authentication_providers, class_name: "AuthenticationProvider::Base"
  state_machine initial: :active do
    state :active
    state :inactive
  end

  def add_provider(provider)
    self.authentication_providers << provider
  end
end
