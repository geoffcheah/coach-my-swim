class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_many :bookings
  validates :price, presence: true, numericality: { only_integer: true }
  validates :bio, presence: true
  validates :speciality, presence: true, inclusion: { in: ["Freestyle", "Breastroke", "Backstroke", "Butterfly"]}
  validates :ability, presence: true, inclusion: { in: ["Level 1", "Level 2", "Level 3"] }
end
