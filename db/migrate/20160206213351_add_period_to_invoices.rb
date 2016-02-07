class AddPeriodToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :period, :date
  end
end
