class Worker < ActiveRecord::Base
  belongs_to :assignable, polymorphic: true
end
