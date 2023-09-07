class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.get_markets
  end

  def show
  end
end