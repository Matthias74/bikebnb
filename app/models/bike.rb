class Bike < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  has_attachment :photo
end
