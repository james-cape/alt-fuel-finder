require 'rails_helper'

describe Station do
  it "has attributes" do
    data = {
      station_name: 'James',
      street_address: '20 something court',
      city: 'Milwaukee',
      state: 'WI',
      zip: '54332',
      fuel_type_code: 'ELEC',
      distance: 0.61,
      access_days_time: 'after 6'
    }

    station = Station.new(data)

    expect(station.name).to eq('James')
    expect(station.address).to eq('20 something court, Milwaukee, WI, 54332')
    expect(station.fuel_type).to eq('ELEC')
    expect(station.distance).to eq(0.61)
    expect(station.access_times).to eq('after 6')
  end

  it "has different attributes" do
    data = {
      station_name: 'Mike',
      street_address: '50 everywhere circle',
      city: 'boston',
      state: 'OY',
      zip: '12345',
      fuel_type_code: 'LPG',
      distance: 1.54,
      access_days_time: 'all the time'
    }

    station = Station.new(data)

    expect(station.name).to eq('Mike')
    expect(station.address).to eq('50 everywhere circle, boston, OY, 12345')
    expect(station.fuel_type).to eq('LPG')
    expect(station.distance).to eq(1.54)
    expect(station.access_times).to eq('all the time')
  end
end
