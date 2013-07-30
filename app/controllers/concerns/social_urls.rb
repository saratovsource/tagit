module Concerns
  module SocialUrls
    extend ActiveSupport::Concern
    included do
      helper_method :auth_with_provider_url
    end

    def auth_with_provider_url(provider)
      "/auth/#{provider}"
    end
  end
end
