class VendorFacade
  def self.get_vendor(id)
    vendor = VendorService.one_vendor(id)[:data]
    Vendor.new(vendor)
  end
end