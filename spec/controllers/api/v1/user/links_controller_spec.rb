require 'spec_helper'

describe Api::V1::User::LinksController do
  before :each do
    @provider = create :authentication_provider_github
    controller.singin @provider
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index', format: :json
      expect(response).to be_success
    end
  end

  describe "POST 'create'" do
    it "returns http success" do
      attrs = attributes_for :valid_link
      post :create, link: attrs, format: :json
      expect(response).to be_success
    end
  end

  describe "PATCH 'update'" do
    it "returns http <status>" do
      item = create :valid_link, {account_id: @provider.account.id}
      attrs = item.attributes
      attrs[:uri] = "http://tagit.com/test"
      patch :update, link: attrs, id: item.id, format: :json
      expect(response).to be_success
    end
  end

  describe "DELETE 'destroy'" do
    it "returns http <status>" do
      item = create :valid_link, {account_id: @provider.account.id}
      delete :destroy, id: item.id, format: :json
      expect(response).to be_success
    end
  end
end
