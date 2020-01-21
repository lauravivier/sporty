class AddPriceToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :price, :integer
  end
end
