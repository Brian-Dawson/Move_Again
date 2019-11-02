class Event < ApplicationRecord
  # Validates that the event has a title atleast 4 characters long
  validates :title, presence: true,
            length: { minimum: 4 }
end
