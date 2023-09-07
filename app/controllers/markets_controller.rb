class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.get_markets
    require 'pry'; binding.pry
  end
end