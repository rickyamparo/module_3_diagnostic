class Station

  def initialize(station_hash)
    @name = station_hash[:station_name]
    @address = station_hash[:street_address]
    @fuel_type = station_hash[:fuel_type_codeq]
    @distance = station_hash[:distance]
    @access_times = station_hash[:access_days_time]
  end

end
