class AddVolunteerToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :volunteer, :boolean, default: false
  end
end
