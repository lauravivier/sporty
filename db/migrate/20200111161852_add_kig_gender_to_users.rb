class AddKigGenderToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :postalcode, :string
  end
end
