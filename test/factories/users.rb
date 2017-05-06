# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "username#{n}" }
    name "name"
    sequence(:email) { |n| "user#{n}@example.com" }
    bio "bio"
  end
end
