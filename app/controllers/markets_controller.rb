class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.get_markets
  end

  def show
    @facade = MarketFacade.get_market(params[:id])
  end
end