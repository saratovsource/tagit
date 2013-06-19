module Concerns
  module Authentication
    extend ActiveSupport::Concern

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
