require 'spec_helper'

describe Account do
  it "valid account" do
    account = create :account
    expect(account).to be_valid
  end

  it "should be tagger" do
    account = build :account
    expect(account).to respond_to(:tag)
  end
end
