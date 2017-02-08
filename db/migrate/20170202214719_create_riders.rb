class CreateRiders < ActiveRecord::Migration[5.0]
  def change
    create_table :riders do |t|
      t.integer :trip_id
      t.integer :rider_id

      t.timestamps
    end
  end
end
