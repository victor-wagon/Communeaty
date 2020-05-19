class Meal < ApplicationRecord
  validates :title, :description, :price, :capacity, :address, :datetime, presence: true
  validates :price, numericality: true
  validates :capacity, numericality: { only_integer: true }
end
