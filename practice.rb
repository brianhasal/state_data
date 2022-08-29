require 'csv'

# CSV.open("abbreviations.csv", "w") do |csv|
#   csv << 
# end

table = CSV.parse(File.read("abbreviations.csv"), headers: true)

abbr_csv_array = []
abbr_array = []
abbr_out_array = []

# table.each do |row|
#   row.each do |key,value|
#     abbr_array << [key = value]
#   end
# end

table.each do |row|
  # p row
  abbr_csv_array << row  
end

# p abbr_csv_array


# abbr_csv_array.each do |element, key, value|
#   p element
#   p key
#   p value
#   p "##########"
#   # temp_array = []
#   # temp_array << element[key] = value
#   # temp_array << element[key] = value
#   # temp_array << element[key] = value
#   # abbr_array << temp_array
# end


abbr_csv_array.each do |row|
  # temp_hash = {}
  temp_array = []
  row.each do |key, value|
    temp_array << {key => value}

    # abbr_array << [{el1 => key}, {el2 => key}, {el3 => key}]
    # p temp_array
    # p args
    # p "##########"
    # temp_array = []
    # temp_array << args[key] = value
    # abbr_array << temp_array
  end
  abbr_array << temp_array
end

# p abbr_array

# all_arrays = abbr_array.map { |pair| pair }

# p all_arrays[0]
# p all_arrays[0].class

# all_arrays[0].each do |thing|
#   p thing
#   p thing.class
# end

abbr_array.each do |array|
  temp = array.inject(:merge)
  abbr_out_array << temp
  # p temp
  # p temp.class
end

p abbr_out_array[1]

# i = 0
# all_arrays.each do |state|

#   p state
#   p "##########"

#   p state["State"]
#     # p "##########"
#   # p state[i]["State"]
#   #   # p "##########"
#   i += 1
# end