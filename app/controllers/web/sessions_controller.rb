class Web::SessionsController < Web::ApplicationController
  include Concerns::SocialUrls

  def new
    @providers = [:github]
    respond_with @providers
  end

  def create
    @provider = repository.with_credentials(auth_hash)
    if @provider.present?
      @provider.update_info(auth_hash)
      singin(@provider)
      redirect_to root_path
    elsif signined?
      @provider = Factories::ProviderFactory.new(auth_hash).build
      account.add_provider(@provider)
      singin(@provider)
      redirect_to root_path
    else
      @provider = Factories::ProviderFactory.new(auth_hash).build
      account = Account.new
      account.add_provider(@provider)
      if account.save
        singin(@provider)
      end
      redirect_to root_path 
    end
  end

  def destroy
    signout
    redirect_to root_path
  end

  protected

  def repository
    @repository ||= ProvidersRepository.new
  end

  def auth_hash
    request.env['omniauth.auth']
  end
end
