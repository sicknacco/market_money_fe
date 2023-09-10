require 'rails_helper'

RSpec.describe 'Market Search' do
  describe 'As a user' do
    describe "When I visit a Vendor's show page" do
      it 'I see a section on the page to search for Markets to add this Vendor', :vcr do
        visit vendor_path(54924)

        within('#market_search') do
          fill_in :name, with: ""
          fill_in :city, with: 'Washington'
          fill_in :state, with: 'District of Columbia'
          click_button 'Search'
        end
        expect(current_path).to eq(vendor_path(54924))
        expect(page).to have_link("14&U Farmers' Market")
      end

      it 'Search results are links to the Market show page', :vcr do
        visit vendor_path(54924)

        within('#market_search') do
          fill_in :name, with: ""
          fill_in :city, with: 'Alexandria'
          fill_in :state, with: 'Virginia'
          click_button 'Search'
        end

        click_link "Del Ray Farmers' Market"
        expect(current_path).to eq(market_path(324298))
      end
    end
  end
end