class Web::SessionsController < Web::ApplicationController

  def new
    @providers = [:github]
    respond_with @providers
  end

  def create
  end

  def destroy
    signout
    redirect_to root_path
  end
end
