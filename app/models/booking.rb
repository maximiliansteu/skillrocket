class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :course
  enum status: [:pending, :confirmed, :canceled, :done]

  before_create :set_total_price

  private

  def set_total_price
    self.total_price = (end_date - start_date).to_i * course.price
  end
end
