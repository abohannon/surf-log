class AddAuthorityToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :authority, :integer, default: 0
  end
end
