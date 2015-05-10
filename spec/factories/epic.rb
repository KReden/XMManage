require 'faker'

FactoryGirl.define do
  factory :epic do
    name { Faker::Lorem.sentence }
  end
end
