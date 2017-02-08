class AddColumnsToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :month, :datetime
    add_column :trips, :time, :integer
    add_column :trips, :date, :integer
  end
end
