class SearchController < ApplicationController
  def index
    @conn = Faraday.new(:url => "https://api.data.gov/nrel/alt-fuel-stations/v1.json?limit=1&api_key=#{ENV["X-API-KEY"]}") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers["X-API-KEY"] = ENV["X-API-KEY"]
    end
    binding.pry
  end
end
