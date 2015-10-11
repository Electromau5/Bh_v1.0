json.array!(@travelpins) do |travelpin|
  json.extract! travelpin, :id, :description
  json.url travelpin_url(travelpin, format: :json)
end
