json.array!(@items) do |item|
  json.extract! item, :id, :name, :brand, :size, :notes, :upc
  json.url item_url(item, format: :json)
end
