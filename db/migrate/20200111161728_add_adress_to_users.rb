class AddAdressToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :adress, :string
  end
end
