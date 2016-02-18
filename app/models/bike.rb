class Bike < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  has_attachment :photo
end
