class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :sport
      t.integer :price
      t.reference :user

      t.timestamps
    end
  end
end
