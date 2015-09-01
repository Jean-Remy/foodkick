class Reservation < ActiveRecord::Base
  BOROUGH = [Marais, Montmartre, Bastille, Saint-Germain]
  belongs_to :user
  belongs_to :restaurant
  validates :name, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true, format: { with: /^750((0)[1-9]||((1||2)\d))$/}
  validates :borough, presence: true
  validates :category, presence: true
end
