class Enrollment < ActiveRecord::Base
  belongs_to :breakout_session , :class_name => "BreakoutSession", :foreign_key => "breakout_session_id"
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
end
