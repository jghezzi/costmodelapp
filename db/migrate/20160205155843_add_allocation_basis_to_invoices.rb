class AddAllocationBasisToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :allocation_basis, :string
  end
end
