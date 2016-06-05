class BreakoutSessionsController < ApplicationController
  def index
    @breakout_sessions = BreakoutSession.all
  end

  def show
    @breakout_session = BreakoutSession.find(params[:id])
  end

  def new
    @breakout_session = BreakoutSession.new
  end

  def create
    @breakout_session = BreakoutSession.new
    @breakout_session.breakout_session_name = params[:breakout_session_name]
    @breakout_session.description = params[:description]
    @breakout_session.ends_at = params[:ends_at]
    @breakout_session.starts_at = params[:starts_at]
    @breakout_session.speaker = params[:speaker]

    if @breakout_session.save
      redirect_to "/breakout_sessions", :notice => "Breakout session created successfully."
    else
      render 'new'
    end
  end

  def edit
    @breakout_session = BreakoutSession.find(params[:id])
  end

  def update
    @breakout_session = BreakoutSession.find(params[:id])

    @breakout_session.breakout_session_name = params[:breakout_session_name]
    @breakout_session.description = params[:description]
    @breakout_session.ends_at = params[:ends_at]
    @breakout_session.starts_at = params[:starts_at]
    @breakout_session.speaker = params[:speaker]

    if @breakout_session.save
      redirect_to "/breakout_sessions", :notice => "Breakout session updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @breakout_session = BreakoutSession.find(params[:id])

    @breakout_session.destroy

    redirect_to "/breakout_sessions", :notice => "Breakout session deleted."
  end
end
