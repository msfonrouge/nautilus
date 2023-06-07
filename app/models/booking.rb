class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :yacht, dependent: :destroy
  validates :date, :status, presence: true
  validates :status, inclusion: { in: ["available", "not-available"]}

end
