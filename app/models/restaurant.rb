class Restaurant < ActiveRecord::Base
  has_many :courses
  has_many :reservations
  has_one :schedule
end
