class AddColumnsToUserTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :user_trips, :status, :string
  end
end
