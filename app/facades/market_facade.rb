class MarketFacade
  def self.get_markets
    MarketService.all_markets[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def self.get_market(id)
    market = MarketService.one_market(id)[:data]
    Market.new(market)
  end

  def self.get_vendors(id)
    MarketService.market_vendors(id)[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end