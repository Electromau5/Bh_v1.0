json.array!(@fashionpins) do |fashionpin|
  json.extract! fashionpin, :id, :description
  json.url fashionpin_url(fashionpin, format: :json)
end
