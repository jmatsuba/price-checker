class Item < ActiveRecord::Base

  has_many :price_observations

  def display_name
    "#{name} - #{size}"
  end

  def average_price
    price_observations.average(:price)
  end

  def maximum_price
    price_observations.maximum(:price)
  end

  def minimum_price
    price_observations.minimum(:price)
  end

end
