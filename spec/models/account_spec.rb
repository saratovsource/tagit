require 'spec_helper'

describe Account do
  it "valid account" do
    account = create :account
    expect(account).to be_valid
  end
end
