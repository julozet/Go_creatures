class Creature < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, :description, :picture_url, :address, :price, presence: true
end
