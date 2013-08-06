require 'spec_helper'

describe Api::V1::User::LinksController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

  describe "POST 'create'" do
    it "returns http success" do
      expect(response).to be_redirect
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
    end
  end

  describe "PATCH 'update'" do
    it "returns http <status>" do
      expect(response).to be_redirect
    end
  end

  describe "DELETE 'destroy'" do
    it "returns http <status>" do
      expect(response).to be_redirect
    end
  end
end
