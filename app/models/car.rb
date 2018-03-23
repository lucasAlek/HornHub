class Car < ApplicationRecord
  has_many :years, :makes
end
