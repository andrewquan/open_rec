class Event < ApplicationRecord
  belongs_to :group # later make the user its own group
  has_many :reservations, dependent: :destroy
  has_many :attendees, through: :reservations, source: :user
end
