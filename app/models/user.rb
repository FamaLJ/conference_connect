class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :enrollments
  has_many :breakout_sessions, :through => :enrollments , :source => :breakoutenroll
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :company_name, :presence => true
  validates :linked_in_url, :presence => true
end
