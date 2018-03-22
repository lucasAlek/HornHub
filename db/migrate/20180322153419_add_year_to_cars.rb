class AddYearToCars < ActiveRecord::Migration[5.1]
  def change
    add_reference :cars, :year, foreign_key: true
  end
end
