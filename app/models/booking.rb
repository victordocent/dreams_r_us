class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dream

  validates :user_id, presence: true
  validates :dream_id, presence: true
end
