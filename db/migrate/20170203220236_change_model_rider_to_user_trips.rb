class ChangeModelRiderToUserTrips < ActiveRecord::Migration[5.0]
  def change
    rename_table :riders, :user_trips
  end
end
