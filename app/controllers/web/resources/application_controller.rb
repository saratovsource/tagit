class Web::Resources::ApplicationController < Web::ApplicationController
  before_action :authenticate_account!
end
