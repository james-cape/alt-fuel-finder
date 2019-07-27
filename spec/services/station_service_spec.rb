require 'rails_helper'

describe StationService do
  it 'gets information' do
    service = StationService.new

    result = service.get_results('80206', 15, 6, 'ELEC,LPG', 'public')

    expect(result).to have_key(:total_results)

    expect(result[:fuel_stations][0]).to have_key(:station_name)
    expect(result[:fuel_stations][0]).to have_key(:street_address)
    expect(result[:fuel_stations][0]).to have_key(:city)
    expect(result[:fuel_stations][0]).to have_key(:state)
    expect(result[:fuel_stations][0]).to have_key(:fuel_type_code)
    expect(result[:fuel_stations][0]).to have_key(:distance)
    expect(result[:fuel_stations][0]).to have_key(:access_days_time)
  end
end
