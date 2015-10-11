json.array!(@artpins) do |artpin|
  json.extract! artpin, :id, :description
  json.url artpin_url(artpin, format: :json)
end
