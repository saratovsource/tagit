class Web::SessionsController < Web::ApplicationController

  def new
    @providers = [:github]
    respond_with @providers
  end

  def create
    @provider = repository.with_credentials(auth_hash)
    #@provider.assign_attributes(auth_hash)
    if @provider.save
      singin(@provider)
      redirect_to root_path
    else
      redirect_to new_session_path
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
