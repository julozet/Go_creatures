class Creature < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, :type, :description, :picture_url, :address, :price, presence: true
end
