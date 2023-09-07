require 'rails_helper'

RSpec.describe 'Markets index page' do
  describe 'As a visitor' do
    it 'I see the name, city, and state of each market in the system', :vcr do
      visit '/markets'

      expect(page).to have_content('Markets')
      within '#markets' do
        expect(page).to have_content("14&U Farmers' Market")
        expect(page).to have_content('Washington')
        expect(page).to have_content('District of Columbia')
      end
    end
  end
end