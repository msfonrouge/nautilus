class User < ApplicationRecord
  has_one_attached :photo
  has_many :bookings, dependent: :destroy # agregado
  has_many :yachts, dependent: :destroy #agregado el dependent destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, :password, presence: true
end
