class AddOriginToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :origin, :string
  end
end
