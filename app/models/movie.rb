class Movie < ApplicationRecord
  with_options presense: true do
    validates :genre
    validates :title
    validates :url
  end
end
