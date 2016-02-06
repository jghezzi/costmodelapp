json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :gl_date, :account_code, :location_code, :department_code, :company_code, :net_amount
  json.url invoice_url(invoice, format: :json)
end
