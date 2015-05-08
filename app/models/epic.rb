class Epic < ActiveRecord::Base
  attr_accessible :name, :total_points, :created_by, :updated_by

  has_many :stories, as: :assignable
end
