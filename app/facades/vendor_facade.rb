class VendorFacade
  def self.get_vendor(id)
    vendor = VendorService.vendor(id)
    Vendor.new(vendor)
  end
end