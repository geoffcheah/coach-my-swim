class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # TO DO: VALIDATIONS
  has_many :bookings
  has_one :lesson
  validates :email, uniqueness: true, presence: true
end
