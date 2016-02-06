require 'csv'

desc "load rooftops csv"
task :load_rooftops_csv do

	puts "starting"		

  CSV.foreach('rooftop_load.csv', :headers => true) do |row|
  	Rooftop.create!(row.to_hash)
  	puts "row loaded"
  end

end