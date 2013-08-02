module Concerns
  module Authentication
    extend ActiveSupport::Concern
    included do
      helper_method :account, :signined?
    end

    def account
      @account = session_manager.account
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

    protected

    def session_manager
      @session_manager ||= SessionManager.new(session)
    end
  end
end
