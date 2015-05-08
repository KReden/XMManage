class Sprint < ActiveRecord::Base
  attr_accessible :name, :begin_date, :end_date, :total_points

  has_many :stories, as: :assignable
end
