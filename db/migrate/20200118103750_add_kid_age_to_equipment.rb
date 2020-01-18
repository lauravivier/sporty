class AddKidAgeToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :kid_age, :integer
  end
end
