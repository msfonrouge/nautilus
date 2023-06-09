class Yacht < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :price, :capacity, presence: true
  validates :name, length: { minimum: 4 }
  validates :price, :capacity, numericality: { only_integer: true }

  include PgSearch::Model

  pg_search_scope :search_yacht,
                  against: [ :name, :price, :capacity ],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
end
