class AddPostalCodeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :postalcode, :integer
  end
end
