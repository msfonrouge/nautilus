class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :price, :capacity, presence: true
  validates :name, length: { minimum: 4 }
  validates :price, :capacity, numericality: { only_integer: true }
end
