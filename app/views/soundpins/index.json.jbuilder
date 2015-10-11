json.array!(@soundpins) do |soundpin|
  json.extract! soundpin, :id, :description
  json.url soundpin_url(soundpin, format: :json)
end
