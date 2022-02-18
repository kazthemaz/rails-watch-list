class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: {scope: :list_id}
end




#  service postgresql stop
#  sudo service postgresql stop
# sudo service postgresql start
