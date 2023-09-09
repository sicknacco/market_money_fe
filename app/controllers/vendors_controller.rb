class VendorsController < ApplicationController
  def show
    @vendor = VendorFacade.get_vendor(params[:id])
    @markets = MarketFacade.returned_markets(params[:name], params[:city], params[:state])
  end
end