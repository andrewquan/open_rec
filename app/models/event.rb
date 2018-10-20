class Event < ApplicationRecord
  belongs_to :group # later make the user its own group
  has_many :reservations, dependent: :destroy
  has_many :attendees, through: :reservations, source: :user

  validates_presence_of :start_datetime

  def same_day_event?
    start_datetime.to_date == end_datetime.to_date
  end
end
