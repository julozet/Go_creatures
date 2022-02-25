class Creature < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address

  validates :name, :kind, :description, :photo, :address, :price, presence: true
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_kind,
    against: [ :name, :kind ],
    using: {
      tsearch: { prefix: true }
    }
end
