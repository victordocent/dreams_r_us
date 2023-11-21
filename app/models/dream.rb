class Dream < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :price, presence: true
  validates :availability, presence: true
  validates :description, presence: true
  validates :title, presence: true
  validates :category, presence: true
end
