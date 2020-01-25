class AddPictureToEquipement < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :picture, :string
  end
end
