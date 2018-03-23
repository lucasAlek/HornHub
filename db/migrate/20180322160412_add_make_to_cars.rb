class AddMakeToCars < ActiveRecord::Migration[5.1]
  def change
    add_reference :cars, :make, foreign_key: true
  end
end
