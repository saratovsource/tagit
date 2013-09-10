require 'spec_helper'

describe Web::Resources::LinksController do

  describe "GET 'index'" do
    it "should redirect if user is guest" do
      get 'index'
      expect(response).to be_redirect
    end

    it "should success if user authenticated" do
      @provider = create :authentication_provider_github
      controller.singin @provider
      get :index
      expect(response).to be_success
    end
  end

end
