require 'rails_helper'

RSpec.describe 'Market Search' do
  describe 'As a user' do
    describe "When I visit a Vendor's show page" do
      it 'I see a section on the page to search for Markets to add this Vendor', :vcr do
        visit vendor_path(54924)

        within('#market_search') do
          fill_in :name, with: 'Union Square'
          fill_in :city, with: 'New York'
          fill_in :state, with: 'New York'
          click_button 'Search'
        end

        expect(current_path).to eq(vendor_path(54924))
        expect(page).to have_link('Union Square Greenmarket')
      end
    end
  end
end