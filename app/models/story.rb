class Story < ActiveRecord::Base
  has_and_belongs_to_many :users

  has_one :sprint
  has_one :epic
  has_many :comments
  has_many :acceptance_criterium
end
