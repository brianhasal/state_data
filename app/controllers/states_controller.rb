require 'csv'


class StatesController < ApplicationController

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
        temp_array << {key.downcase => value}
      end
      out_array << temp_array
    end
    
    
    out_array.map { |array| array.inject(:merge) }

  end

  def index_abbr
    states = csv_parser("abbreviations.csv")
    render json: states.as_json
  end

  def index_state_data
    states = csv_parser("state_data.csv")
    render json: states.as_json
  end

  def show
    state = State.find_by(code: params[:code])
    render json: state.as_json
  end


end
