require 'faker'

FactoryGirl.define do
  factory :acceptance_criterium do
    story
    gvn { Faker::Lorem.sentence }
    whn { Faker::Lorem.sentence }
    thn { Faker::Lorem.sentence }
  end
end
