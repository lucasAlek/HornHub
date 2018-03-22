class CreatePurcheses < ActiveRecord::Migration[5.1]
  def change
    create_table :purcheses do |t|
      t.decimal :price

      t.timestamps
    end
  end
end
