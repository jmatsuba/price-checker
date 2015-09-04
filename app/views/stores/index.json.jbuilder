json.array!(@stores) do |store|
  json.extract! store, :id, :location_name, :address, :city, :province, :postal_code, :store_banner_id
  json.url store_url(store, format: :json)
end
