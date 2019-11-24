class Signup < ApplicationRecord
  # Each signup belongs to an event
  # This enables the signups to be destroyed when the event is destroyed
  belongs_to :event
  # Each signup also belongs to a user
  belongs_to :user
  # The validations for the various components of the signup
  # The name, start time, end time, date, and id of the volunteer selected are validated
  validates :name, presence: true,
            length: { minimum: 2}
  validates :start_time, presence: true,
            length: { minimum: 4 }
  validates :end_time, presence: true,
            length: { minimum: 4 }
  validates :date, presence: true,
            length: { minimum: 6 }
  validates :user_id, presence: true

end

# Project name: Move_Again
# Description: Enables senior citizens to signup for events in their community
# Filename: signup.rb
# Description: Does validation on the signup as well as associations
# Last modified on: 11/23/19
