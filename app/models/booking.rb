class Booking < ApplicationRecord
  after_initialize :set_defaults

  belongs_to :user
  belongs_to :yacht
  validates :date, :status, presence: true
  validates :status, inclusion: { in: ["available", "not-available"] }

  def set_defaults
    self.status = "not-available"
  end
end
