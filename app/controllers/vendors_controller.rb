class VendorsController < ApplicationController
  # before_action :permit_params, only: [:show]

  def show
    @vendor = VendorFacade.get_vendor(params[:id])
    @markets = MarketFacade.returned_markets(params[:name], params[:city], params[:state])
  end
  
  private
  
  # def permit_params
  #   params.permit(:name, :city, :state)
  # end
end