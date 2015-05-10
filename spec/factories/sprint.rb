require 'faker'

FactoryGirl.define do
  factory :sprint do
    name { Faker::Lorem.sentence }
  end
end
