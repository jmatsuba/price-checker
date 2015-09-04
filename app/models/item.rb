class Item < ActiveRecord::Base

  def display_name
    "#{name} - #{size}"
  end


end
