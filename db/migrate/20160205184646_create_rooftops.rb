class CreateRooftops < ActiveRecord::Migration
  def change
    create_table :rooftops do |t|
      t.date :period
      t.string :product
      t.integer :rooftops

      t.timestamps null: false
    end
  end
end
