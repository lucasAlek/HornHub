class RemoveMakeFromCar < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :make, :string
  end
end
