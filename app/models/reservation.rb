class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :creature

  validates :starting_date, :ending_date, presence: true
end
