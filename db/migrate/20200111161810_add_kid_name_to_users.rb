class AddKidNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :kidname, :string
  end
end
