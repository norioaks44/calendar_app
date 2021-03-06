class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end
  
  def edit
  end
  
  def update
    if @event.update(event_params)
      redirect_to event_path
    else
      render :edit
    end
  end
  
  def destroy
    if @event.destroy
      redirect_to root_path
    else
      render :show
    end
  end
  
  private
  
  def event_params
    params.require(:event).permit(:title_id, :start_time, :meeting_time_id, :info, :coach_review)
  end
  
  def set_event
    @event = Event.find(params[:id])
  end

end
