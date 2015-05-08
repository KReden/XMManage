class Profile < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  belong_to :user
end
