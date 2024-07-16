class Testimonial < ApplicationRecord
  has_one_attached :avatar
  validates :name, :quote, presence: true
  validates :email, uniqueness: true
  validates_format_of :name, :with => /\A[a-z\s]+\z/i
end
