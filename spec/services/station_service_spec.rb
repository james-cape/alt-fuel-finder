require 'rails_helper'

describe StationService do
  it 'gets stations' do
    service = StationService.new

    result = service.get_results('80203')

    expect(result).to have_key(:station_name)
    expect(result).to have_key(:street_address)
    expect(result).to have_key(:station_name)
    expect(result).to have_key(:station_name)
  end
end
