require 'csv'


class StatesController < ApplicationController

  def index
    states = CSV.open("abbreviations.csv", "w") do |csv|
      csv << [:Code]
    end
    render json: states.as_json
  end

  def show
    state = State.find_by(code: params[:code])
    render json: state.as_json
  end


end