class Make < ApplicationRecord
  has_many :cars, dependent: :destroy

  validates :make, presence: true
end
