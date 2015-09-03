class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  validates :user_id, presence: true
  validates :restaurant_id, presence: true
  validates :user_id, uniqueness: { scope: :restaurant_id, message: "Attention, tu n'as droit qu'à un voucher par Restaurant"}
end
