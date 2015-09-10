class Course < ActiveRecord::Base
  belongs_to :restaurant
  CATEGORIES = %w(Entrée Plat Dessert)
  validates :name, presence: true
  validates :category, presence: true
  validates_inclusion_of :category, :in => CATEGORIES
  validates :price, presence: true
  validates :restaurant_id, presence: true
end
