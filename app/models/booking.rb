class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  validates :description, presence: true
end
