class Course < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings

  CATEGORIES = ["Sports", "Coding", "Writing", "Mental Health", "Business", "Gardening", "Fitness", "Crypto", "Design", "Fashion"]
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :content, presence: true
  validates :location, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
