class SignupsController < ApplicationController
  # Creates the signup for the event
  def create
    @event = Event.find(params[:event_id])
    @signup = @event.signups.create(signup_params)
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
  # Validates that the signup is legit

  def signup_params
    params.require(:signup).permit(:name, :extra, :time, :date)
  end
end
