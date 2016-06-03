class Moment < ApplicationRecord
  validates :link, uniqueness: true
end
