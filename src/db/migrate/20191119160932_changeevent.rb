class Changeevent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :time
    add_column :events, :start_time, :string
    add_column :events, :end_time, :string
    remove_column :signups, :time
    add_column :signups, :start_time, :string
    add_column :signups, :end_time, :string
  end
end
