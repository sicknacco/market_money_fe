require 'rails_helper'

RSpec.describe VendorFacade do
  describe 'class methods' do
    it 'returns a Vendor object with attributes', :vcr do
      vendor = VendorFacade.get_vendor(54924)

      expect(vendor).to be_a Vendor
      expect(vendor.name).to be_a String
      expect(vendor.description).to be_a String
      expect(vendor.contact_name).to be_a String
      expect(vendor.contact_phone).to be_a String
      expect(vendor.credit_accepted).to be_a Boolean
    end
  end
end