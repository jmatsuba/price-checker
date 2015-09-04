class CreatePriceObservations < ActiveRecord::Migration
  def change
    create_table :price_observations do |t|
      t.references :item, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :store, index: true, foreign_key: true
      t.float :price

      t.timestamps null: false
    end
  end
end
