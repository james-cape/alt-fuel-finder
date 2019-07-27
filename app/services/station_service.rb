class StationService
  def get_results(zip, limit, radius, fuel_type, access)
    get_json("?location=#{zip}&fuel_type=#{fuel_type}&limit=#{limit}&radius=#{radius}&access=#{access}")
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json") do |f|
      f.params['api_key'] = ENV['api_key']
      f.adapter Faraday.default_adapter
    end
  end
end
