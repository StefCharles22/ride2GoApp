class ChangeCreatorIdToTrips < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :creatorId, :creator_id
  end
end
