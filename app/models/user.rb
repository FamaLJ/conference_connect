class User < ActiveRecord::Base
has_many :enrollments , :class_name => "Enrollment", :foreign_key => "user_id"
has_many :breakout_sessions, :through => :enrollments
end
