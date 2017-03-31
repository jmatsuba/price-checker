json.array!(@price_observations) do |price_observation|
  json.extract! price_observation, :id, :item_id, :user_id, :store_id, :price
  json.url price_observation_url(price_observation, format: :json)
end
