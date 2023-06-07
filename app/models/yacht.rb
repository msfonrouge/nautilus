class Yacht < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :name, :price, :capicity, presence: true
  validates :name, length: { minimum: 4 }
  validates :price, :capacity, numericality: { only_integer: true }
end
