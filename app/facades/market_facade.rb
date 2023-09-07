class MarketFacade
  def self.get_markets
    MarketService.all_markets.map do |market_data|
      Market.new(market_data)
    end
  end
end