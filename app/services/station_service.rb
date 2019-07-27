class StationService

  def get_results(zip, limit, access, radius, fuel_type)
    get_json("v1.json?location=#{zip}&limit=#{limit}&api_key=#{ENV['api_key']}&format=JSON&radius=#{radius}&access=#{access}&fuel_type=#{fuel_type}")

  end


  private

    def get_json(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end

    def conn()
      Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations') do |f|
        f.params['api_key'] = ENV['api_key']
        f.adapter Faraday.default_adapter
      end
    end
end
