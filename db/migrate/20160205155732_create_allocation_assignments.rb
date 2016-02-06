class CreateAllocationAssignments < ActiveRecord::Migration
  def change
    create_table :allocation_assignments do |t|
      t.string :vendor_name
      t.string :location_code
      t.string :allocation_method
      t.string :allocation_basis

      t.timestamps null: false
    end
  end
end
