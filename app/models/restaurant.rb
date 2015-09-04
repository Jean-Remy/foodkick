class Restaurant < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  BOROUGH = ['Marais', 'Montmartre', 'Bastille', 'Saint-Germain']
  has_many :courses
  has_many :reservations
  has_one :schedule
  has_one :user
  validates :name, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true, format: { with: /750((0)[1-9]||((1||2)\d))/}
  validates :borough, presence: true
  validates :category, presence: true
  #validates :email, presence: true, format: { with: /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/ }
  validates :price_min, presence: true
  validates :price_max, presence: true

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
