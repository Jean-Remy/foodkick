class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  validates :name, presence: true
  validates :address, presence: true
end
