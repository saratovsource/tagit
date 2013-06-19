# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authentication_provider_basis, :class => 'AuthenticationProvider::Base' do
    account
    provider "base"
  end
end
