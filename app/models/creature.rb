class Creature < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_one_attached :photo
  geocoded_by :address

  validates :name, :kind, :description, :photo, :address, :price, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
