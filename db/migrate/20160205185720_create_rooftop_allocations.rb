class CreateRooftopAllocations < ActiveRecord::Migration
  def change
    create_table :rooftop_allocations do |t|
      t.string :allocation_basis
      t.date :period
      t.string :product
      t.decimal :allocation

      t.timestamps null: false
    end
  end
end
