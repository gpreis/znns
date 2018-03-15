FactoryBot.define do
  factory :user do
    name 'Bob Ross'
    sex :male
    birthday Date.new(1942, 10, 29)
    sequence(:username) { |n| "bob#{n}ross" }
  end
end
