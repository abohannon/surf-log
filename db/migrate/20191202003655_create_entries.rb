class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :location
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :rating
      t.string :wave_height
      t.float :tide_height
      t.string :tide_direction
      t.string :primary_swell_direction
      t.integer :primary_swell_angle
      t.text :description

      t.timestamps
    end
  end
end
