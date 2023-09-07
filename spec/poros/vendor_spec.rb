require 'rails_helper'

RSpec.describe Vendor do
  describe 'initialize' do
    it 'exists and has attributes' do
      vendor_data = {
        :id=>"55823",
        :type=>"vendor",
        :attributes=>
         {:name=>"The Charcuterie Corner",
          :description=>"Vendor selling a variety of artisanal cured meats and sausages.",
          :contact_name=>"Claudie Langworth III",
          :contact_phone=>"1-147-179-9747",
          :credit_accepted=>false}
      }
      vendor = Vendor.new(vendor_data)

      expect(vendor).to be_a Vendor
      expect(vendor.id).to eq("55823")
      expect(vendor.name).to eq("The Charcuterie Corner")
      expect(vendor.description).to be_a String
      expect(vendor.contact_name).to be_a String
      expect(vendor.contact_phone).to be_a String
      expect(vendor.credit_accepted).to eq(false)
    end
  end
end