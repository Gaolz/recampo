# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post_vote do
    user
    post
    value 'up'
  end
end
