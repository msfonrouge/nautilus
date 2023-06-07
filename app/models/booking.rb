class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :yacht
  validates :date, :status, presence: true
  validates :status, inclusion: { in: ["available", "not-available"]}

end
