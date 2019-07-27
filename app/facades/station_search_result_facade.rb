class StationSearchResultFacade
  def initialize(zip, limit, access, radius, fuel_type)
    @zip = zip
    @limit = limit
    @access = access
    @radius = radius
    @fuel_type = fuel_type
  end

  def stations
    service = StationService.new
    stations = service.get_results(@zip, @limit, @access, @radius, @fuel_type)[:fuel_stations]

    # stations.map do |f|
    #   Station.new(f)
    # end
    stations.map { |f| Station.new(f) }
  end

end
