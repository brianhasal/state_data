require 'csv'

# CSV.open("abbreviations.csv", "w") do |csv|
#   csv << 
# end

table = CSV.parse(File.read("abbreviations.csv"), headers: true)

table.each do |row|
  p row["State"]
end