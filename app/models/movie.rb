class Movie < ApplicationRecord
  before_action :authenticate_user!
end
