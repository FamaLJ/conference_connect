class Enrollment < ActiveRecord::Base
  belongs_to :breakoutenroll , :class_name => "Breakoutsession", :foreign_key => "breakoutenroll_id"
  belongs_to :userenroll , :class_name => "User", :foreign_key => "userenroll_id"

  validates :breakoutenroll_id, :presence => true, :uniqueness => {:scope=> :userenroll_id}

  @enrollments = Enrollment.all
  @user = User.all
  @breakoutsessions = Breakoutsession.all
  @breakoutsession = Breakoutsession.all
end
