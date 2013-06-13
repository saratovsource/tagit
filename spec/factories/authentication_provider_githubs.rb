# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authentication_provider_github,
    class: 'AuthenticationProvider::Github',
    parent: :authentication_provider_basis do
      slug "github"
  end
end
