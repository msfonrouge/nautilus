class Booking < ApplicationRecord
  after_initialize :set_defaults

  belongs_to :user
  belongs_to :yacht
  validates :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: ["available", "not-available"] }

  def set_defaults
    self.status = "available"
  end
end
