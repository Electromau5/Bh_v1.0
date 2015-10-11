json.array!(@sportpins) do |sportpin|
  json.extract! sportpin, :id, :description
  json.url sportpin_url(sportpin, format: :json)
end
