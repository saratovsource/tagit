class Web::ApplicationController < ApplicationController
  include Concerns::SocialUrls
  respond_to :html
  layout :dynamic_layout

  protected

  def dynamic_layout
    request.xhr? ? false : "application"
  end
end
