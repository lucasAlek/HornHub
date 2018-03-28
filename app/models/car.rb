class Car < ApplicationRecord
  belongs_to :year
  belongs_to :make

  mount_uploader :image, ImageUploader

  validates :price, presence: true
  validates :model, presence: true
end
