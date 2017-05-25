class Season < ApplicationRecord
  belongs_to:medium
  has_many:episode
end
