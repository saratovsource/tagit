class ProvidersRepository < Repositories::Base
  MODEL = AuthenticationProvider::Base

  def with_credentials(auth_hash)
    MODEL.where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_initialize
  end

end
