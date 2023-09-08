require 'rails_helper'

RSpec.describe 'Vendors show page' do
  describe 'As a visitor' do
    it 'Displays the vendor name and other attributes', :vcr do
      visit vendor_path(54924)

      expect(page).to have_content("CHZ PLZ")
      expect(page).to have_content('Contact Info:')
      expect(page).to have_content("Name: Verna Goodwin Ret.")
      expect(page).to have_content("Phone: 595-100-6344")
      expect(page).to have_content("Credit Accepted?: YES")
      expect(page).to have_content("Description: This vendor offers a variety of artisanal cheeses.")
    end
  end
end