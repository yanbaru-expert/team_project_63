class Text < ApplicationRecord
  before_action :authenticate_user!
end
