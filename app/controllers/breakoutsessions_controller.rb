class BreakoutsessionsController < ApplicationController
    before_action :authenticate_user!
  def index
    @breakoutsessions = Breakoutsession.all
    @breakoutsessions1 = Breakoutsession.where(:id => 1)
    @breakoutsessions2 = Breakoutsession.where(:id => 2)
    @breakoutsessions3 = Breakoutsession.where(:id => 3)
    @breakoutsessions4 = Breakoutsession.where(:id => 4)
  end

  def agenda
    @breakoutsession = Breakoutsession.find(params[:id])
  end

  def show
    @breakoutsession = Breakoutsession.find(params[:id])
  end

  def new
    @breakoutsession = Breakoutsession.new
  end

  def create
    @breakoutsession = Breakoutsession.new
    @breakoutsession.speakerbio = params[:speakerbio]
    @breakoutsession.image_url = params[:image_url]
    @breakoutsession.breakoutname = params[:breakoutname]
    @breakoutsession.description = params[:description]
    @breakoutsession.starts_at = params[:starts_at]
    @breakoutsession.ends_at = params[:ends_at]
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

    @breakoutsession.speakerbio = params[:speakerbio]
    @breakoutsession.image_url = params[:image_url]
    @breakoutsession.breakoutname = params[:breakoutname]
    @breakoutsession.description = params[:description]
    @breakoutsession.starts_at = params[:starts_at]
    @breakoutsession.ends_at = params[:ends_at]
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
