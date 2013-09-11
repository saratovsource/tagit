require 'spec_helper'

describe Web::TemplatesController do
  before :each do
    @provider = create :authentication_provider_github
    controller.singin @provider
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show', template: 'dashboard/index'
      expect(response).to be_success
    end
  end

end
