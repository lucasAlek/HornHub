class Year < ApplicationRecord
  has_many :cars, dependent: :destroy

  validates :year, presence: true
end
