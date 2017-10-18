class SearchController < ApplicationController
  def index
    @conn = Faraday.new(:url => 'https://api.data.gov/nrel/alt-fuel-stations/') do |faraday|
      faraday.adapater Faraday.default

    end
    binding.pry
  end
end
