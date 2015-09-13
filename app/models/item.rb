class Item < ActiveRecord::Base

  has_many :price_observations

  def display_name
    "#{name} - #{size}"
  end

  def average_price
  end

end
