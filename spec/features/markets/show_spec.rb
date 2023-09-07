require 'rails_helper'

RSpec.describe 'Markets show page' do
  describe 'As a visitor' do
    it 'Displays the market name and full address', :vcr do
      visit market_path(322458)

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content('Washington')
      expect(page).to have_content('District of Columbia')
      expect(page).to have_content('1400 U Street NW')
      expect(page).to have_content('20009')
    end

    it "Displays names of Market's Vendors as links to show page", :vcr do
      visit market_path(322458)

      within('#vendors') do
        expect(page).to have_link('The Charcuterie Corner')
      end

      visit market_path(322474)

      within('#vendors') do
        expect(page).to have_link('Orange County Olive Oil')
        expect(page).to have_link('The Vodka Vault')
        expect(page).to have_link('Lavender Latte')

        click_link('Orange County Olive Oil')
      end
      expect(current_path).to eq(vendor_path(55297))
    end
  end
end