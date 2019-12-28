class AddSkillSwellTidePrivateToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :skill_level, :integer
    add_column :locations, :tide, :string
    add_column :locations, :swell_direction, :string
    add_column :locations, :private, :boolean, default: false
  end
end
