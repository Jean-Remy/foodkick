class Schedule < ActiveRecord::Base
  belongs_to :restaurant
  DAYS = %w(Dimanche, Lundi, Mardi, Mercredi, Jeudi, Vendredi, Samedi)
  validates :day_name, presence: true
  validates_inclusion_of :day_name, :in => DAYS
  validates :day_num, presence: true
  validates_inclusion_of :day_num, :in => [1, 2, 3, 4, 5, 6, 7]
  validates :restaurant_id, presence: true
end
