class AddCreatorIdToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :creatorId, :integer
  end
end
