class ProvidersRepository < Repositories::Base
  MODEL = AuthenticationProvider::Base

  def with_credentials(auth_hash)
    MODEL.where(provider: auth_hash.provider, uid: auth_hash.uid).first
  end

  def find(id)
    MODEL.find(id)
  end

end
