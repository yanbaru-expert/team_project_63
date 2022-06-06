class Text < ApplicationRecord
  with_options presense: true do
    validates :genre
    validates :title
    validates :content
  end
end
