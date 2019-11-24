Rails.application.routes.draw do
  devise_for :users
  get 'home_screen/index'
  #Nesting signups within an event
  resources :events do
    resources :signups
  end
  #Setting the home page to home_screen
  root 'home_screen#index'
end
# Project name: Move_Again
# Description: Enables senior citizens to signup for events in their community
# Filename: routes.rb
# Description: Routes for the different components of the program
# Also contains parameters needed for event to be created
# Last modified on: 11/23/19
