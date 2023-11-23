class Dream < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_many_attached :photos

  searchkick

  validates :price, presence: true
  validates :availability, presence: true
  validates :description, presence: true
  validates :title, presence: true
  validates :category, presence: true
end
