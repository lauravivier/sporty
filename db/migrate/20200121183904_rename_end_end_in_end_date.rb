class RenameEndEndInEndDate < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :end_date, :end_end
  end
end
