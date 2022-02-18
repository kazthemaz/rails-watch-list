class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: {scope: :list}
  validates :list, uniqueness: true
end















#  service postgresql stop
#  sudo service postgresql stop
# sudo service postgresql start
