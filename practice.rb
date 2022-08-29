# require 'csv'

# # CSV.open("abbreviations.csv", "w") do |csv|
# #   csv << 
# # end

# table = CSV.parse(File.read("abbreviations.csv"), headers: true)

# abbr_csv_array = []
# abbr_array = []
# abbr_out_array = []

# # table.each do |row|
# #   row.each do |key,value|
# #     abbr_array << [key = value]
# #   end
# # end

# table.each do |row|
#   # p row
#   abbr_csv_array << row  
# end

# # p abbr_csv_array


# # abbr_csv_array.each do |element, key, value|
# #   p element
# #   p key
# #   p value
# #   p "##########"
# #   # temp_array = []
# #   # temp_array << element[key] = value
# #   # temp_array << element[key] = value
# #   # temp_array << element[key] = value
# #   # abbr_array << temp_array
# # end


# abbr_csv_array.each do |row|
#   # temp_hash = {}
#   temp_array = []
#   row.each do |key, value|
#     temp_array << {key => value}

#     # abbr_array << [{el1 => key}, {el2 => key}, {el3 => key}]
#     # p temp_array
#     # p args
#     # p "##########"
#     # temp_array = []
#     # temp_array << args[key] = value
#     # abbr_array << temp_array
#   end
#   abbr_array << temp_array
# end


# # p abbr_array

# # all_arrays = abbr_array.map { |pair| pair }

# # p all_arrays[0]
# # p all_arrays[0].class

# # all_arrays[0].each do |thing|
# #   p thing
# #   p thing.class
# # end

# # abbr_array.each do |array|
# #   # temp = array.inject(:merge)
# #   # abbr_out_array << temp
# #   abbr_out_array << array.inject(:merge)
# #   # p temp
# #   # p temp.class
# # end

# abbr_array.map { |array| abbr_out_array << array.inject(:merge) }

# #   # temp = array.inject(:merge)
# #   # abbr_out_array << temp
# #   abbr_out_array << array.inject(:merge)
# #   # p temp
# #   # p temp.class
# # end

# p abbr_array[0]
# # p abbr_out_array[0]

# # i = 0
# # all_arrays.each do |state|

# #   p state
# #   p "##########"

# #   p state["State"]
# #     # p "##########"
# #   # p state[i]["State"]
# #   #   # p "##########"
# #   i += 1
# # end


######^^^^^^^Original Working Model^^^^^^^^^#########









require 'csv'




def csv_parser(filename)

  table = CSV.parse(File.read(filename), headers: true)
  
  csv_array = []
  out_array = []

  table.each do |row|
    csv_array << row  
  end

  csv_array.each do |row|
    temp_array = []
    row.each do |key, value|
      temp_array << {key => value}
    end
    out_array << temp_array
  end
  
  
  out_array.map { |array| array.inject(:merge) }
  
  
  return out_array[0]



end

p csv_parser("abbreviations.csv")