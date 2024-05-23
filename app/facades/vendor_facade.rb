class VendorFacade
  def get_vendor(id)
    service = Service.new
    json_data = service.single_vendor(id)

    data = {
      id: json_data[:id],
      name: json_data[:attributes][:name],
      description: json_data[:attributes][:description],
      contact_name: json_data[:attributes][:contact_name],
      contact_phone: json_data[:attributes][:contact_phone],
      credit_accepted: json_data[:attributes][:credit_accepted]
    }
    
    single_vendor = Vendor.new(data)
  end
end