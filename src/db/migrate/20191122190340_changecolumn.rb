class Changecolumn < ActiveRecord::Migration[5.2]
  def change
    change_column :signups, :date, :string
  end
end
