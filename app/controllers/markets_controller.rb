class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.get_markets
  end

  def show
    @market = MarketFacade.get_market(params[:id])
  end
end