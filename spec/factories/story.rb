require 'faker'

FactoryGirl.define do
  factory :story do
    name { Faker::Lorem.sentence }
  end
end
