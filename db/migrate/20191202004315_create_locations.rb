class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.float :lat
      t.float :lon
      t.string :city
      t.string :state
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
