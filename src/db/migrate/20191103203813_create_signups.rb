class CreateSignups < ActiveRecord::Migration[5.2]
  def change
    create_table :signups do |t|
      t.string :name
      t.text :extra
      t.time :time
      t.date :date
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
