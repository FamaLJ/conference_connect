class EnrollmentsController < ApplicationController
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
    @enrollment.industry_interest = params[:industry_interest]
    @enrollment.job_opportunities = params[:job_opportunities]
    @enrollment.speaker_connection = params[:speaker_connection]
    @enrollment.user_id = params[:user_id]
    @enrollment.breakout_session_id = params[:breakout_session_id]

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
    @enrollment.industry_interest = params[:industry_interest]
    @enrollment.job_opportunities = params[:job_opportunities]
    @enrollment.speaker_connection = params[:speaker_connection]
    @enrollment.user_id = params[:user_id]
    @enrollment.breakout_session_id = params[:breakout_session_id]

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
end
