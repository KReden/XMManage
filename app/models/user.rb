class User < ActiveRecord::Base
  # attr_acessible :username, :password 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :stories, as: :assignable
  has_many :comments
  has_one :profile
end
