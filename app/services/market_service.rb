class MarketService
  def self.all_markets
    get_url('/api/v0/markets')
  end

  def self.one_market(id)
    get_url("/api/v0/markets/#{id}")
  end

  def self.market_vendors(id)
    get_url("/api/v0/markets/#{id}/vendors")
  end

  def self.conn
    Faraday.new('http://localhost:3000')
  end

  private

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end