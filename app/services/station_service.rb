class StationService
  def get_results(zip, limit, radius, fuel_type, access)
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['api_key']}&location=#{zip}&fuel_type=#{fuel_type}&limit=#{limit}&radius=#{radius}&access=#{access}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
