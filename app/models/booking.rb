class Booking < ApplicationRecord
  mount_uploader :video, VideoUploader
  belongs_to :user
  belongs_to :lesson
  validates :description, presence: true
end
