class Text < ApplicationRecord
  with_options presence: true do
    validates :genre
    validates :title
    validates :content
  end

  enum genre: {
    invisible: 0,
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5
  }

  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze

  def self.search_by_genre(genre)
    if genre == "php"
      Text.where(genre: "php")
    else
      Text.where(genre: Text::RAILS_GENRE_LIST)
    end
  end
end
