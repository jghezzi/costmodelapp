class AddAllocationAssignmentIdToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :allocation_assignment_id, :integer
  end
end
