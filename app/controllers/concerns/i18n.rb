module Concerns
  class MissingLocale < RuntimeError; end;
  module I18n
    extend ActiveSupport::Concern
    included do
      before_action :set_locale
    end

    def set_locale
      if params[:locale]
        unless ::I18n.available_locales.include? params[:locale].to_sym
          raise MissingLocale.new("#{params[:locale]} locale is missing")
        end
      end
      ::I18n.locale = params[:locale] || ::I18n.default_locale
      default_url_options[:locale] = current_locale
    end

    private

    def current_locale
      ::I18n.locale == ::I18n.default_locale ? nil : ::I18n.locale
    end
  end
end
