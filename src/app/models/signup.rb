class Signup < ApplicationRecord
  belongs_to :event
  has_many :users
  validates :name, presence: true,
            length: { minimum: 2}
  validates :start_time, presence: true,
            length: { minimum: 4 }
  validates :end_time, presence: true,
            length: { minimum: 4 }
  validates :date, presence: true,
            length: { minimum: 6 }

end
