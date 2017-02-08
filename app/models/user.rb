class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar,
  :styles => { :medium => "300x300px>", :thumb => "100x100px>" },
  :default_url => "/assets/default-img.jpg"

  validates_attachment_content_type :avatar,
  :content_type => /\Aimage\/.*\Z/

  # many to many relationships

  # allows me to have @user.user_trips
  has_many :user_trips
  # join table can allow me to create @user.trips
  has_many :trips, :through => :user_trips


end
