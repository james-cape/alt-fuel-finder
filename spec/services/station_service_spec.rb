require 'rails_helper'

describe StationService do
  it 'gets stations' do
    service = StationService.new

    result = service.get_results('80203', 5, 'public', 10, 'LPG')

    expect(result).to have_key(:fuel_stations)

    expect(result[:fuel_stations][0]).to have_key(:station_name)
    expect(result[:fuel_stations][0]).to have_key(:street_address)
    expect(result[:fuel_stations][0]).to have_key(:city)
    expect(result[:fuel_stations][0]).to have_key(:state)
    expect(result[:fuel_stations][0]).to have_key(:zip)
    expect(result[:fuel_stations][0]).to have_key(:fuel_type_code)
    expect(result[:fuel_stations][0]).to have_key(:access_days_time)
  end
end
