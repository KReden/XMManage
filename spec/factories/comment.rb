require 'faker'

FactoryGirl.define do
  factory :comment do
    user
    story
    comment { Faker::Lorem.sentence }
  end
end
