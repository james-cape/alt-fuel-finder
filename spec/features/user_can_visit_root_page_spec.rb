require 'rails_helper'

feature "User can visit root page" do
  scenario "and view navbar contents" do
    visit "/"
    within(".navbar") do
      expect(page).to have_content("AltFuelFinder")
      expect(page).to have_selector("input[value='Search by zip...']")
    end
  end

  scenario "and search for stations by distance" do
    #   As a user
    # When I visit "/"
    visit '/'

    # And I fill in the search form with 80203 (Note: Use the existing search form)
    fill_in :q, with: '80203'

    # And I click "Locate"
    click_on 'Locate'

    # Then I should be on page "/search"
    expect(current_path).to eq('/search')

    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    within('#closest_stations') do
      expect(page).to have_css('#station-1')
      expect(page).to have_css('#station-10')
      expect(page).to_not have_css('#station-11')

      # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
      within('#station-1') do
        expect(page).to have_content('Station Name: ')
        expect(page).to have_content('Station Address: ')
        expect(page).to have_content('Station Fuel Type: ')
        expect(page).to have_content('Station Access Time: ')
      end

      # And the stations should be limited to Electric and Propane
      expect(page).to_not have_content('BD')
      expect(page).to_not have_content('CNG')
      expect(page).to_not have_content('E85')
      expect(page).to_not have_content('HY')
      expect(page).to_not have_content('LNG')
      save_and_open_page
    end
  end
end
