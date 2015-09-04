class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :location_name
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.references :storebanner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
