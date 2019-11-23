class AddAttendeeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :attendee, :boolean, default: false
  end
end
