class AcceptanceCriteria < ActiveRecord::Base
  belongs_to :story

  validates_presence_of :story
end
