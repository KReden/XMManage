class Story < ActiveRecord::Base
  has_one :sprint
  has_one :epic
  has_many :comments
  has_many :acceptance_criterium
  has_many :users, as: :assignable
end
