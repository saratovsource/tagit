require 'spec_helper'

describe Link do
  it "should have valid uri" do
    link = build :valid_link
    expect(link).to be_valid
  end

  it "should be invalid link item" do
    link = build :invalid_link
    expect(link).to be_invalid
  end

  it "should be taggble" do
    link = build :valid_link
    expect(link).to respond_to(:tags)
  end
end
