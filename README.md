## README

Run through the standard Rails setup.

```
$ bundle install
$ rake db:{create,migrate}
$ rails s
```

Navigate to `http://localhost:3000`


## Questions for Alex
I can't find the distance in the stations JSON object
```
[4] pry(#<Station>)> attributes
=> {:access_code=>"public",
 :access_days_time=>"Garage business hours; pay lot",
 :access_detail_code=>nil,
 :cards_accepted=>nil,
 :date_last_confirmed=>"2019-05-09",
 :expected_date=>nil,
 :fuel_type_code=>"ELEC",
 :groups_with_access_code=>"Public",
 :id=>1498,
 :open_date=>"2018-08-20",
 :owner_type_code=>"LG",
 :status_code=>"E",
 :station_name=>"City of Sacramento - Capitol Parking Garage",
 :station_phone=>"888-758-4389  916-264-5011",
 :updated_at=>"2019-05-14T21:16:45Z",
 :facility_type=>"PAY_GARAGE",
 :geocode_status=>"GPS",
 :latitude=>38.5783802,
 :longitude=>-121.4926,
 :city=>"Sacramento",
 :intersection_directions=>"At 10th and L, 2nd Level",
 :plus4=>nil,
 :state=>"CA",
 :street_address=>"1015 L St",
 :zip=>"95814",
 :country=>"US",
 :bd_blends=>nil,
 :cng_dispenser_num=>nil,
 :cng_fill_type_code=>nil,
 :cng_psi=>nil,
 :cng_renewable_source=>nil,
 :cng_total_compression=>nil,
 :cng_total_storage=>nil,
 :cng_vehicle_class=>nil,
 :e85_blender_pump=>nil,
 :e85_other_ethanol_blends=>nil,
 :ev_connector_types=>["NEMA520"],
 :ev_dc_fast_num=>nil,
 :ev_level1_evse_num=>2,
 :ev_level2_evse_num=>nil,
 :ev_network=>nil,
 :ev_network_web=>nil,
 :ev_other_evse=>"3 SP Inductive",
 :ev_pricing=>nil,
 :ev_renewable_source=>nil,
 :hy_is_retail=>nil,
 :hy_pressures=>nil,
 :hy_standards=>nil,
 :hy_status_link=>nil,
 :lng_renewable_source=>nil,
 :lng_vehicle_class=>nil,
 :lpg_primary=>nil,
 :lpg_nozzle_types=>nil,
 :ng_fill_type_code=>nil,
 :ng_psi=>nil,
 :ng_vehicle_class=>nil,
 :access_days_time_fr=>nil,
 :intersection_directions_fr=>nil,
 :bd_blends_fr=>nil,
 :groups_with_access_code_fr=>"Public",
 :ev_pricing_fr=>nil}
 ```
