class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :user

  validates :booking_date, uniqueness: {scope: :listing_id}
  validates :status, inclusion: { in: ["Pending", "Approved", "Rejected"], allow_nil: false }
end



