class Movie < ApplicationRecord
  has_many :bookmarks

  validates :tittle, uniqueness: true
  validates :overview, presence: true
end
