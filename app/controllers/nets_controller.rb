class NetsController < ApplicationController
  def index
    render 'index'
  end

  def index
    @enrollments = Enrollment.where(:userenroll_id => current_user.id)
  #  @enrollments = current_user.enrollments
  end
end
