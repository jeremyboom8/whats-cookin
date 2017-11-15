class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_attachment :photo
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true

end
