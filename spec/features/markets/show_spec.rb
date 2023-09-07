require 'rails_helper'

RSpec.describe 'Markets show page' do
  describe 'As a visitor' do
    it 'Displays the market name and full address', :vcr do
      visit market_path(322458)

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content('Washington')
    end
  end
end