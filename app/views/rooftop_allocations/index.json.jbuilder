json.array!(@rooftop_allocations) do |rooftop_allocation|
  json.extract! rooftop_allocation, :id, :allocation_basis, :period, :product, :allocation
  json.url rooftop_allocation_url(rooftop_allocation, format: :json)
end
