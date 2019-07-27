class StationService

  def get_results(zip, limit, access, radius, fuel_type)
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?location=#{zip}&limit=#{limit}&api_key=#{ENV['api_key']}&format=JSON&radius=#{radius}&access=#{access}&fuel_type=#{fuel_type}")
    JSON.parse(response.body, symbolize_names: true)
  end


  # private
  #
  #   def response
  #   end
end
