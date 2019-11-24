class SignupsController < ApplicationController
  # Creates the signup for the event
  before_action :authenticate_user!
  def create
    @event = Event.find(params[:event_id])
    @signup = @event.signups.create(signup_params)
    @signup.save
    redirect_to event_path(@event)
  end
  # Destroys the signup from the event
  def destroy
    @event = Event.find(params[:event_id])
    @signup = @event.signups.find(params[:id])
    @signup.destroy
    redirect_to event_path(@event)
  end

  private
  # Validates that the signup is legitimate

  def signup_params
    params.require(:signup).permit(:name, :extra, :start_time, :end_time, :date, :user_id)
  end
end

# Project name: Move_Again
# Description: Enables senior citizens to signup for events in their community
# Filename: signups_controller.rb
# Description: All of the various functions that can be done with the signups
# Also has required parameters
# Last modified on: 11/23/19
