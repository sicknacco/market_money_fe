class VendorsController < ApplicationController
  def show
    @vendor = VendorFacade.get_vendor(params[:id])
  end
end