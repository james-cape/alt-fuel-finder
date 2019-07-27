require 'rails_helper'

describe Station do
  it "has attributes" do
    data = {
      station_name: 'corner store',
      street_address: '18th market',
      city: 'Denver',
      state: 'CO',
      zip: '88888',
      fuel_type_code: 'ELEC',
      access_days_time: 'till noon'
    }

    station = Station.new(data)

    expect(station.name).to eq('corner store')
    expect(station.address).to eq('18th market, Denver, CO, 88888')
    expect(station.fuel_type).to eq('ELEC')
    expect(station.access_times).to eq('till noon')
  end

  it "has different attributes" do
    data = {
      station_name: 'school',
      street_address: 'colorado',
      city: 'Springs',
      state: 'AC',
      zip: '89988',
      fuel_type_code: 'LPG',
      access_days_time: 'after 10'
    }

    station = Station.new(data)

    expect(station.name).to eq('school')
    expect(station.address).to eq('colorado, Springs, AC, 89988')
    expect(station.fuel_type).to eq('LPG')
    expect(station.access_times).to eq('after 10')
  end
end
