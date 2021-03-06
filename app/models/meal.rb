class Meal < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many_attached :images
  validates :title, :description, :price, :capacity, :address, :datetime, presence: true
  validates :price, numericality: true
  validates :capacity, numericality: { only_integer: true }
end
