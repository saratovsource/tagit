class Api::ApplicationController < ApplicationController
  respond_to :json
  serialization_scope :account

  def default_serializer_options
    {root: false}
  end
end
