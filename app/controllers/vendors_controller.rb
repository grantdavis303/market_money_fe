class VendorsController < ApplicationController
  def show
    vendor_id = params["id"]
    facade = VendorFacade.new
    @vendor_info = facade.get_vendor(vendor_id)
  end
end
