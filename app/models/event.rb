class Event < ApplicationRecord
  belongs_to :group # later make the user its own group
end
