class Visitor < ApplicationRecord
  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, length: {minimum:5, maximum:11}
end
