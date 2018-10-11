class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @groups = Group.all # fix this to show just user's admin authorized groups
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      current_user.attend_event(@event.id)
      # need to add logic to add user as admin
      flash[:success] = "Event created."
      redirect_to @event
    else
      flash.now[:error] = "Something went wrong."
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :group_id)
  end
end
