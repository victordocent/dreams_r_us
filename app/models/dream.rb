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

  CATEGORIES = %w[Nightmares Daydream Lucid Falling Recurring Initiative Prophetic Astral Travel Black Awakening Tjukurrpa]
  ICONS = ["fa-regular fa-star", "fa-solid fa-eye", "fa-regular fa-droplet", "fa-solid fa-cloud-moon", "fa-solid fa-moon", "fa-solid fa-anchor", "fa-solid fa-volcano"]
end
