class AddDestinationToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :destination, :string
  end
end
