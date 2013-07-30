module Factories
  module Omniauth
    class Github
      def initialize(args = {})
        @omniauth = args
      end

      def build
        AuthenticationProvider::Github.new do |g|
          g.provider = @omniauth[:provider]
          g.uid = @omniauth[:uid]
        end
      end
    end
  end
end
