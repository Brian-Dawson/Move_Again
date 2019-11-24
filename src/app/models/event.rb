class Event < ApplicationRecord
  # Validates various things about the event such as title or length
  # The events also have signups and when you delete the event you destroy the signups
  has_many :signups, dependent: :destroy
  validates :title, presence: true,
            length: { in: 4..30 }
  validates :description, presence: true,
            length: { in: 1..40 }
  validates :date, presence: true,
            length: { in: 6..9 }
  validates :start_time, presence: true,
            length: { in: 4..8 }
  validates :end_time, presence: true,
            length: { in: 4..8 }

end

# Project name: Move_Again
# Description: Enables senior citizens to signup for events in their community
# Filename: event.rb
# Description: Validates things about each event and provides associations
# Last modified on: 11/23/19