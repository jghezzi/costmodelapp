json.array!(@allocation_assignments) do |allocation_assignment|
  json.extract! allocation_assignment, :id, :vendor_name, :location_code, :allocation_method, :allocation_basis
  json.url allocation_assignment_url(allocation_assignment, format: :json)
end
