class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_attachment :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true

end
