require 'spec_helper'

describe AuthenticationProvider::Github do
  it "should be valid" do
    provider = build :authentication_provider_github
    expect(provider).to be_valid
  end
end
