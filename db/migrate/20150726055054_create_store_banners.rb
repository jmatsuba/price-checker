class CreateStoreBanners < ActiveRecord::Migration
  def change
    create_table :store_banners do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
