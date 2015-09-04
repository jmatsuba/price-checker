json.array!(@store_banners) do |store_banner|
  json.extract! store_banner, :id, :name
  json.url store_banner_url(store_banner, format: :json)
end
