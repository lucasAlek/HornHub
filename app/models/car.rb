class Car < ApplicationRecord
  belongs_to :year
  belongs_to :make

  validates :price, presence: true
  validates :model, presence: true
end
