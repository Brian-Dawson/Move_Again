class EventsController < ApplicationController
  # Index displays all of the events in a list
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @events = Event.all
  end
  # Creates new event using the Event class
  def new
    @event = Event.new
  end
  # Edits events using the find function and the event's id
  def edit
    @event = Event.find(params[:id])
  end
  # Creates the Event using the Event class and the parameters specified
  # If the user clicks on save they get redirected to the event otherwise it makes the new page
  def create
    @event = Event.new(event_params)

    if @event.save
    redirect_to @event
    else
      render 'new'
    end
  end

  # Shows the event to the user by using the event id
  def show
    @event = Event.find(params[:id])
  end

  # Finds the event by the event id and then if the update meets the parameters redirects back to the index
  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  # Destroys the event by finding it via id and then directing back to the main page
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end


  private
  # Event parameters needed to create the event
  def event_params
    params.require(:event).permit(:title, :description, :location, :start_time, :date, :end_time)
  end
end

# Project name: Move_Again
# Description: Enables senior citizens to signup for events in their community
# Filename: events_controller.rb
# Description: Controller for the events and all of the various things that can be done with each event
# Also contains parameters needed for event to be created
# Last modified on: 11/23/19
