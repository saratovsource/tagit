module Concerns
  module Authentication
    extend ActiveSupport::Concern
    included do
      helper_method :account, :signined?, :profile
    end

    def account
      @account = session_manager.account
    end

    def profile
      @profile = session_manager.profile
    end

    def singin(provider)
      session_manager << provider
    end

    def signout(*)
      session_manager.clear
    end

    def signined?
      session_manager.has_provider?
    end

    def provider
      session_manager.provider
    end

    def authenticate_account!
      redirect_to root_path unless signined?
    end

    def current_user
      @user ||= session_manager.account
    end

    protected

    def session_manager
      @session_manager ||= SessionManager.new(session)
    end
  end
end
