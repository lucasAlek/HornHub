class Year < ApplicationRecord
  has_many :cars

  validates :year, presence: true
end
