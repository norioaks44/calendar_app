class EventsController < ApplicationController
  
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_parameter)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end


  private

  def event_parameter
    params.require(:event).permit(:title_id, :start_time, :meeting_time_id, :info, :coach_review)
  end

end
