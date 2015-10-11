json.array!(@gamingpins) do |gamingpin|
  json.extract! gamingpin, :id, :description
  json.url gamingpin_url(gamingpin, format: :json)
end
