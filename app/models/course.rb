class Course < ApplicationRecord
  has_one :user
  has_one_attached :photo
end
