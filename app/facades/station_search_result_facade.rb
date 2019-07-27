class StationSearchResultFacade
  def initialize(zip, limit, access, radius, fuel_type)
    @zip = zip
    @limit = limit
    @access = access
    @radius = radius
    @fuel_type = fuel_type
  end

  def stations
    stations = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
    service = StationService.new
    stations = service.get_results(@zip, @limit, @access, @radius, @fuel_type)

    stations.map do |f|
      Station.new(f)
    end
  end

  private

  def response
    Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?location=#{@zip}&limit=#{@limit}&api_key=#{ENV['api_key']}&format=JSON&radius=#{@radius}&access=#{@access}&fuel_type=#{@fuel_type}")
  end
end
