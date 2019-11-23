class Event < ApplicationRecord
  # Validates that the event has a title at least 4 characters long
  # The events also have signups and when you delete the event you destroy the signups
  has_many :signups, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 4 }
  validates :description, presence: true,
            length: { minimum: 1 }
  validates :date, presence: true,
            length: { minimum: 8 }
  validates :start_time, presence: true,
            length: { minimum: 5 }
  validates :end_time, presence: true,
            length: { minimum: 5 }

end
