require 'rails_helper'

RSpec.describe 'Markets index page' do
  describe 'As a visitor' do
    it 'I see the name, city, and state of each market in the system', :vcr do
      visit '/markets'

      expect(page).to have_content('Markets')
      within '#market_322458' do
        expect(page).to have_content("14&U Farmers' Market")
        expect(page).to have_content('Washington')
        expect(page).to have_content('District of Columbia')
      end
    end

    it 'Has a button that leads to each market show page', :vcr do
      visit '/markets'

      within '#market_322458' do
        expect(page).to have_button('More Info')
        click_button 'More Info'
      end
      expect(current_path).to eq(market_path(322458))
    end
  end
end