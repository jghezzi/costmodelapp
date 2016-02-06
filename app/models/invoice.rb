class Invoice < ActiveRecord::Base

	has_one :allocation_assignment
	after_save :assign_allocation

	def assign_allocation
		a = AllocationAssignment.where("vendor_name = ? AND location_code = ?",self.vendor_name, self.location_code).first
		
		self.update_columns(:allocation_basis => a.allocation_basis, :allocation_assignment_id => a.id)
	end

end
