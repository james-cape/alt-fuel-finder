require 'rails_helper'

describe Station do
  it "has attributes" do
    attributes = {
      zip: 80204,
      limit: 6,
      access: 'public',
      radius: 4,
      fuel_type: 'ELEC'
    }

    station = Station.new(attributes)

    expect(station.zip).to eq(80204)
    expect(station.limit).to eq(6)
    expect(station.access).to eq('public')
    expect(station.radius).to eq(4)
    expect(station.fuel_type).to eq('ELEC')
  end

  it "has different attributes" do
    attributes = {
      zip: 44324,
      limit: 9,
      access: 'private',
      radius: 15,
      fuel_type: 'LPG'
    }

    station = Station.new(attributes)

    expect(station.zip).to eq(44324)
    expect(station.limit).to eq(9)
    expect(station.access).to eq('private')
    expect(station.radius).to eq(15)
    expect(station.fuel_type).to eq('LPG')
  end
end
