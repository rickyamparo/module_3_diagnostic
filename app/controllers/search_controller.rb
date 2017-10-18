class SearchController < ApplicationController
  def index
    @conn = Faraday.new(:url => "https://api.data.gov/nrel/alt-fuel-stations/v1.json?limit=1&api_key=#{ENV["X-API-KEY"]}") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers["X-Api-Key"] = ENV["X-API-KEY"]
    end
    response = @conn.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=80203&radius=6.0&limit=10.0&fuel_type=ELEC,LPG").body
    raw_stations = JSON.parse(response, symbolize_names: true)
    binding.pry
  end
end
