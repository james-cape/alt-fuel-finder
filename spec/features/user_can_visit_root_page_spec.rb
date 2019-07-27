require 'rails_helper'

feature "User can visit root page" do
  scenario "and view navbar contents" do
    visit "/"
    within(".navbar") do
      expect(page).to have_content("AltFuelFinder")
      expect(page).to have_selector("input[value='Search by zip...']")
    end
  end

  scenario "and view navbar contents" do
    # When I visit "/"
    # And I fill in the search form with 80206 (Note: Use the existing search form)
    # And I click "Locate"
    # Then I should be on page "/search"
    visit "/"
    fill_in :q, with: '80206'
    click_on 'Locate'
    expect(current_path).to eq('/search')

    # Then I should see the total results of the stations that match my query, 90.
    within '#total-results' do
      expect(page).to have_content('There were 104 stations that met your search')
    end

    # Then I should see a list of the 15 closest stations within 5 miles sorted by distance
    within '#closest-stations' do
      expect(page).to have_css('#station-1')
      expect(page).to have_css('#station-15')
      expect(page).to_not have_css('#station-16')

      # And the stations should be limited to Electric and Propane
      expect(page).to_not have_content('BD')
      expect(page).to_not have_content('CNG')
      expect(page).to_not have_content('E85')
      expect(page).to_not have_content('HY')
      expect(page).to_not have_content('LNG')

      # And the stations should only be public, and not private, planned or temporarily unavailable.
      expect(page).to_not have_content('private')

      # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
      within('#station-1') do
        expect(page).to have_content('Station Name: ')
        expect(page).to have_content('Station Address: ')
        expect(page).to have_content('Station Fuel Type: ')
        expect(page).to have_content('Station Distance: ')
        expect(page).to have_content('Station Access Times: ')
      end
    end
  end
end
