class BreakoutSession < ActiveRecord::Base
  has_many :enrollments , :class_name => "Enrollment", :foreign_key => "breakout_session_id"
  has_many :users, :through => :enrollments
end
