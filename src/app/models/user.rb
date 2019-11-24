class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Each user can signup to various different events and when a user is removed their signups are too
  has_many :signups, dependent: :destroy
end

# Project name: Move_Again
# Description: Enables senior citizens to signup for events in their community
# Filename: user.rb
# Description: Contains associations of users
# Last modified on: 11/23/19
