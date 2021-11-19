class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_one :review
  enum status: [:pending, :confirmed, :cancelled, :done]

  before_create :set_total_price

  private

  def set_total_price
    self.total_price = (end_date - start_date).to_i * course.price
  end
end
