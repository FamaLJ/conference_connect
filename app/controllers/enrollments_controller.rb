class EnrollmentsController < ApplicationController
    before_action :authenticate_user!
    
  def index
    @enrollments = Enrollment.all
  end

  def show
    @enrollment = Enrollment.find(params[:id])
  end

  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.new
    @enrollment.other = params[:other]
    @enrollment.industry = params[:industry]
    @enrollment.job = params[:job]
    @enrollment.content = params[:content]
    @enrollment.userenroll_id = params[:userenroll_id]
    @enrollment.breakoutenroll_id = params[:breakoutenroll_id]

    if @enrollment.save
      redirect_to "/enrollments", :notice => "Enrollment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  def update
    @enrollment = Enrollment.find(params[:id])

    @enrollment.other = params[:other]
    @enrollment.industry = params[:industry]
    @enrollment.job = params[:job]
    @enrollment.content = params[:content]
    @enrollment.userenroll_id = params[:userenroll_id]
    @enrollment.breakoutenroll_id = params[:breakoutenroll_id]

    if @enrollment.save
      redirect_to "/enrollments", :notice => "Enrollment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @enrollment = Enrollment.find(params[:id])

    @enrollment.destroy

    redirect_to "/enrollments", :notice => "Enrollment deleted."
  end

  def read_only_text_field(object_name, method, options = {})
            text_field(object_name, method, :disabled => true)
      end

end
