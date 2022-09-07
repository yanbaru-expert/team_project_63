class Movie < ApplicationRecord
  has_many :watch_progresses, dependent: :destroy
  with_options presence: true do
    validates :genre
    validates :title
    validates :url
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
      Movie.includes(:watch_progresses).where(genre: "php")
    else
      Movie.includes(:watch_progresses).where(genre: Movie::RAILS_GENRE_LIST)
    end
  end

  def watch_finished?(user)
    watch_progresses.any? { |watch_progress| watch_progress.user_id == user.id }
  end
end
