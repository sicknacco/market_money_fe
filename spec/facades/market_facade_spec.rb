require 'rails_helper'

RSpec.describe MarketFacade do
  describe '#get_markets' do
    markets = MarketFacade.get_markets

    expect(markets).to be_an Array
    expect(markets.first).to be_a Market
    expect(markets.first.name).to be_a String
    expect(markets.first.city).to be_a String
    expect(markets.first.state).to be_a String
  end
end