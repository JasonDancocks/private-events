class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create]
  def new
  	@event = Event.new
  end

  def create
  	@user = current_user
  	@event = @user.created_events.build(event_params)
  	if @event.save
  		 flash[:success] = "Event has been created"
			redirect_to events_path
		else
			render "new"
		end

  end

  def index
  	@events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  end

  private

  def event_params
  	params.require(:event).permit(:name)
  end
end
