class Story < ActiveRecord::Base
  attr_accessible :name, :description, :assumptions, :status, :estimated_points, :actual_points, :complete, :completed_on, :created_by_id, :updated_by_id

  belongs_to :assignable, polymorphic: true
  has_one :sprint
  has_one :epic
  has_many :comments
  has_many :acceptance_criterium
end
