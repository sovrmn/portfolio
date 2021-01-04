class Project < ApplicationRecord
  validates :name, presence: true
  has_many_attached :photos
  has_one_attached :photo
end
