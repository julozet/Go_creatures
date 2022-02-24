class Creature < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo

  validates :name, :kind, :description, :photo, :address, :price, presence: true
end
