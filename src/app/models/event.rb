class Event < ApplicationRecord
  # Validates that the event has a title at least 4 characters long
  # The events also have signups and when you delete the event you destroy the signups
  has_many :signups, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 4 }
end
