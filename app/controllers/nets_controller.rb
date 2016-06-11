class NetsController < ApplicationController
  def index
    @enrollments = Enrollment.all
    @enrollments = current_user.enrollments

    @users = User.all
    @breakoutsession = Breakoutsession.all
    @breakoutsessions = Breakoutsession.all
    @breakoutsessions1 = Breakoutsession.where(:id => 1)
    @breakoutsessions2 = Breakoutsession.where(:id => 2)
    @breakoutsessions3 = Breakoutsession.where(:id => 3)
    @breakoutsessions4 = Breakoutsession.where(:id => 4)

    @enrollments1 = Enrollment.where(:breakoutenroll_id => 1)
    @enrollments2 = Enrollment.where(:breakoutenroll_id => 2)
    @enrollments3 = Enrollment.where(:breakoutenroll_id => 3)
    @enrollments4 = Enrollment.where(:breakoutenroll_id => 4)

    #  @enrollments = current_user.enrollments  #  @enrollments = current_user.enrollments
    render 'index'
  end

end
