require 'rails_helper'

RSpec.describe VendorService do
  describe 'class methods' do
    it 'returns a Vendor object with attributes', :vcr do
      vendor = VendorService.one_vendor(54924)

      expect(vendor).to be_a Hash
      expect(vendor[:data][:attributes][:name]).to be_a String
      expect(vendor[:data][:attributes][:description]).to be_a String
      expect(vendor[:data][:attributes][:contact_name]).to be_a String
      expect(vendor[:data][:attributes][:contact_phone]).to be_a String
      expect(vendor[:data][:attributes][:credit_accepted]).to be_in([true, false])
    end
  end
end