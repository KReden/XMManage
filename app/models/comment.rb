class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :story
  
  validates_presence_of :story_id
  validates_presence_of :user_id
end
