require 'pry'
module Concerns
  module AngularTemplating
    extend ActiveSupport::Concern
    included do
      respond_to :ng
      before_action :intercept_angular_templates
    end

    protected

    def intercept_angular_templates
      if angular_request?
        render("#{params[:controller]}/#{params[:action]}", layout: false)
      end
    end

    def angular_request?
      request.format == "text/angular"
    end
  end
end
