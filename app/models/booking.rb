class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dream
  attribute :status
  enum :status, { pending: 0, accepted: 1, refused: 2 }

  validates :user_id, presence: true
  validates :dream_id, presence: true

  validates :start_date, uniqueness: { scope: :dream_id, message: "This date is already booked" }
  validates :end_date, uniqueness: { scope: :dream_id, message: "This date is already booked" }
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if start_date.blank? || end_date.blank?

    errors.add(:end_date, "must be after start date") if end_date <= start_date
  end

end
