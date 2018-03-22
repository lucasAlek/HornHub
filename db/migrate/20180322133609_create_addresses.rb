class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    # drop_table :addresses
    create_table :addresses do |t|
      t.string :address
      t.string :city
      t.string :postal_code

      t.timestamps
    end
  end
end
