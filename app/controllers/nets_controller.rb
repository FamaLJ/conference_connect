class NetsController < ApplicationController
  def index
    @enrollments = Enrollment.all
    @users = User.all
    @breakoutsessions = Breakoutsession.all

    #  @enrollments = current_user.enrollments
    render 'index'
  end

end
