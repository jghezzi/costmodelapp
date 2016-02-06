json.array!(@rooftops) do |rooftop|
  json.extract! rooftop, :id, :period, :product, :rooftops
  json.url rooftop_url(rooftop, format: :json)
end
