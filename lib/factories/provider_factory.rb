module Factories
  class ProviderFactory
    attr_reader :options
    FACTORIES = {
      github: Factories::Omniauth::Github
    }.freeze

    def initialize(omniauth_hash)
      @options = omniauth_hash
    end

    def build
      factory.new(@options).build
    end

    protected

    def provider_name
      @options[:provider].to_sym
    end

    # TODO: Any way?
    def factory
      FACTORIES[provider_name]
    end
  end
end
