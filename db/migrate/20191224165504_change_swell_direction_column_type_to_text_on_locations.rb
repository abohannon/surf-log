class ChangeSwellDirectionColumnTypeToTextOnLocations < ActiveRecord::Migration[6.0]
  def change
    change_column :locations, :swell_direction, :text
  end
end
