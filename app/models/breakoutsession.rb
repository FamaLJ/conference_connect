class Breakoutsession < ActiveRecord::Base
  has_many :enrollments
  has_many :users, :through => :enrollments , :source => :userenroll
end
