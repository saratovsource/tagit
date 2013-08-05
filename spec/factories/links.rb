# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    factory :valid_link do
      uri "http://tagit.com"
    end

    factory :invalid_link do
      uri "mememe://invalid_link.ru"
    end
  end
end
