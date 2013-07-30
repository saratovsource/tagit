require 'spec_helper'

describe Factories::ProviderFactory do
  it "should respond build method" do
    auth_hash = {provider: "github", uid: "123456"}
    provider_factory = Factories::ProviderFactory.new(auth_hash)
    expect( provider_factory ).to respond_to(:build)
  end

  it "should have github provider factory" do
    auth_hash = {provider: "github", uid: "123456"}
    auth_provider = Factories::ProviderFactory.new(auth_hash).build
    expect( auth_provider ).to be_an_instance_of(AuthenticationProvider::Github)
    expect( auth_provider.provider ).to eq("github")
    expect( auth_provider.uid ).to eq("123456")
  end
end
