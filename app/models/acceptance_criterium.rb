class AcceptanceCriterium < ActiveRecord::Base
  attr_accessible :given, :when, :then

  belongs_to :story
end
