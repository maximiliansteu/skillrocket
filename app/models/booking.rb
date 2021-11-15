class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :course
  enum status: [:pending, :confirmed, :destroy]
end
