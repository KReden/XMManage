class User < ActiveRecord::Base
  # attr_acessible :username, :password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :stories
  has_many :comments
  has_one :profile

  validates :email, presence: true, uniqueness: true

end
