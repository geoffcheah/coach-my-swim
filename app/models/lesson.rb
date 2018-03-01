class Lesson < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, presence: true, numericality: { only_integer: true }
  validates :bio, presence: true
  validates :speciality, presence: true, inclusion: { in: ["Freestyle", "Breastroke", "Backstroke", "Butterfly"]}
  validates :ability, presence: true, inclusion: { in: ["Level 1", "Level 2", "Level 3"] }

  include PgSearch
  pg_search_scope :search_by_name_and_lesson_ability,
    against: [ :speciality, :ability, :price ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
