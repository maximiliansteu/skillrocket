class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :courses, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :received_bookings, through: :courses, source: :bookings # -> for the teacher
  has_one_attached :photo
end
