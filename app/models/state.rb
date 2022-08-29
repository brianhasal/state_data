require 'csv'


class State < ApplicationRecord

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

  end
end
