class BreakoutsessionsController < ApplicationController
  def index
    @breakoutsessions = Breakoutsession.all
  end

  def show
    @breakoutsession = Breakoutsession.find(params[:id])
  end

  def new
    @breakoutsession = Breakoutsession.new
  end

  def create
    @breakoutsession = Breakoutsession.new
    @breakoutsession.breakout = params[:breakout]
    @breakoutsession.description = params[:description]
    @breakoutsession.ends_at = params[:ends_at]
    @breakoutsession.starts_at = params[:starts_at]
    @breakoutsession.speaker = params[:speaker]

    if @breakoutsession.save
      redirect_to "/breakoutsessions", :notice => "Breakoutsession created successfully."
    else
      render 'new'
    end
  end

  def edit
    @breakoutsession = Breakoutsession.find(params[:id])
  end

  def update
    @breakoutsession = Breakoutsession.find(params[:id])

    @breakoutsession.breakout = params[:breakout]
    @breakoutsession.description = params[:description]
    @breakoutsession.ends_at = params[:ends_at]
    @breakoutsession.starts_at = params[:starts_at]
    @breakoutsession.speaker = params[:speaker]

    if @breakoutsession.save
      redirect_to "/breakoutsessions", :notice => "Breakoutsession updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @breakoutsession = Breakoutsession.find(params[:id])

    @breakoutsession.destroy

    redirect_to "/breakoutsessions", :notice => "Breakoutsession deleted."
  end
end
