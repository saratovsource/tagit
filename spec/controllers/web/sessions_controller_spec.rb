require 'spec_helper'

describe Web::SessionsController do

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

  describe "Logout from application" do
    it "shoul redirect to root after destroy session" do
      delete :destroy
      expect(response).to be_redirect
    end
  end

  describe "Authenticatoin with various providers" do
    describe "with Github" do
      before do
        request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:github]
      end

      it "should authorize account" do
        post :create, provider: "github", uid: "1234567"
        expect(response).to be_redirect
      end

      it "should create new account" do
        post :create, provider: "github", uid: "1234567", info: {name: "name"}, credentials:{token: "token"}
        expect(response).to be_redirect
      end
    end
  end
end
