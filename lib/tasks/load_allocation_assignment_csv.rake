require 'csv'

desc "load allocation assignment csv"
task :load_allocation_assignment_csv do

	puts "starting"		

  CSV.foreach('allocation_assignment_load.csv', :headers => true) do |row|
  	AllocationAssignment.create!(row.to_hash)
  	puts "row loaded"
  
  end

end