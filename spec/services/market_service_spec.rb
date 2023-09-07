require 'rails_helper'

RSpec.describe MarketService do
  describe 'class methods' do
    it '#all_markets returns all markets', :vcr do
      response = MarketService.all_markets

      expect(response).to be_a Hash
      expect(response[:data]).to be_an Array
      response[:data].each do |market|
        expect(market).to have_key :attributes
        expect(market[:attributes]).to be_a Hash
        expect(market[:attributes]).to have_key :name
        expect(market[:attributes][:name]).to be_a String
        expect(market[:attributes]).to have_key :city
        # expect(market[:attributes][:city]).to be_a String
        expect(market[:attributes]).to have_key :state
        expect(market[:attributes][:state]).to be_a String
      end
    end
  end
end