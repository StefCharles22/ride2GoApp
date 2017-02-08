class UserTrip < ApplicationRecord
  # usertrip belongs to user table
  belongs_to :rider, class_name: "User", foreign_key: "rider_id"
  # and also belongs to trip table
  belongs_to :trip

end
