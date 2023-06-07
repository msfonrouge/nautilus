class User < ApplicationRecord
  has_many :yachts, through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :password, length: { in: 6..20 }
  validates :password, confirmation: true

end
