require 'pry'
module Concerns
  module AngularTemplating
    extend ActiveSupport::Concern
    included do
      before_action :intercept_angular_templates
    end

    protected

    def intercept_angular_templates
      if request.format == "text/angular"
        render("#{params[:controller]}/#{params[:action]}", layout: false)
      else
        render nothing: true
      end
    end
  end
end
