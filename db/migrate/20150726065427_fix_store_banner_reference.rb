class FixStoreBannerReference < ActiveRecord::Migration
  def change
    rename_column :stores, :storebanner_id, :store_banner_id
  end
end
