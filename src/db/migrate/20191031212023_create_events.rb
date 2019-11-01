class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :time
      t.string :date

      t.timestamps
    end
  end
end
