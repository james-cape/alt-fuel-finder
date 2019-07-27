class StationSearchResultsFacade

  # Then I should see a list of the 15 closest stations within 5 miles sorted by distance
  # And the stations should be limited to Electric and Propane
  # And the stations should only be public, and not private, planned or temporarily unavailable.


  def initialize(zip, limit, radius, fuel_type, access)
    @zip = zip
    @limit = limit
    @radius = radius
    @fuel_type = fuel_type
    @access = access

  end

  def total_results
    service = StationService.new
    service.get_results(@zip, @limit, @radius, @fuel_type, @access)[:total_results]
  end

  def stations
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['api_key']}&location=#{@zip}&fuel_type=#{@fuel_type}&limit=#{@limit}&radius=#{@radius}&access=#{@access}")
    stations = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
    stations.map do |data|
      Station.new(data)
    end
  end
end
