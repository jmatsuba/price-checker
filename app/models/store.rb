class Store < ActiveRecord::Base
  belongs_to :store_banner

  def display_name
    "#{self.store_banner.name} - #{location_name}"
  end

end
