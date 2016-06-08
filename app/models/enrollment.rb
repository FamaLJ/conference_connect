class Enrollment < ActiveRecord::Base
  belongs_to :breakoutenroll , :class_name => "Breakoutsession", :foreign_key => "breakoutenroll_id"
  belongs_to :userenroll , :class_name => "User", :foreign_key => "userenroll_id"
end
