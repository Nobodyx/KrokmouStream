class Medium < ApplicationRecord
  has_many:season

  has_attachment :photo, accept: [:jpg, :png, :jpeg]
end
