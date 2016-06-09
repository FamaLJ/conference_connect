class NetsController < ApplicationController
  def index
    @enrollments = Enrollment.all
    @enrollmentsa = Enrollment.all
    @users = User.all
    @breakoutsessions = Breakoutsession.all
    @breakoutsessions1 = Breakoutsession.where(:id => 1)
    @breakoutsessions2 = Breakoutsession.where(:id => 2)
    @breakoutsessions3 = Breakoutsession.where(:id => 3)
    @breakoutsessions4 = Breakoutsession.where(:id => 4)
    #  @enrollments = current_user.enrollments
    render 'index'
  end

end
