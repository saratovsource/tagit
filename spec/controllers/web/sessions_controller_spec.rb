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

end
