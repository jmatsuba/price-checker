class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.string :size
      t.string :notes
      t.integer :upc

      t.timestamps null: false
    end
  end
end
