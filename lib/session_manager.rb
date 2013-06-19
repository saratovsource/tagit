class SessionManager
  attr_reader :storage
  def initialize(storage)
    @storage = storage
  end

  def set_provider(provider)
    @storage[:authentication_provider_id] = provider.id
  end
  alias << set_provider

  def clear
    @storage.delete(:authentication_provider_id)
  end

  def has_provider?
    @storage[:authentication_provider_id].present?
  end

  def provider
    providers_repository.find(storage[:authentication_provider_id])
  end
end
