class Trip < ApplicationRecord


  # many to many relationships

  # can make association @trip.creator,.rider,.user_trips through user_trips to get to rider/user

  has_many :riders, class_name: "User", foreign_key: "rider_id", through: "user_trips"

  has_many :user_trips

  # trip belongs to the creator aka user but recognized as creator_id
  belongs_to  :creator, class_name: "User", foreign_key: "creator_id", :required => "true"

end
