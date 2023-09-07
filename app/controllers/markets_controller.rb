class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.get_markets
  end
end