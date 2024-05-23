class MarketFacade
  def get_all_markets
    service = Service.new
    json_data = service.all_markets

    all_markets = Array.new
    json_data.each do |market|
      data = {
        id: market[:id],
        name: market[:attributes][:name],
        city: market[:attributes][:city],
        state: market[:attributes][:state]
      }
      all_markets << Market.new(data)
    end
    all_markets
  end

  def get_single_market(id)
    service = Service.new
    json_data = service.single_market(id)

    data = {
      id: json_data[:id],
      name: json_data[:attributes][:name],
      street: json_data[:attributes][:street],
      city: json_data[:attributes][:city],
      state: json_data[:attributes][:state],
      zip: json_data[:attributes][:zip]
    }
    single_market = Market.new(data)
  end

  def get_vendors_by_market(id)
    service = Service.new
    json_data = service.all_market_vendors(id)

    all_market_vendors = Array.new
    json_data.each do |market_vendor|
      data = {
        id: market_vendor[:id],
        name: market_vendor[:attributes][:name],
        description: market_vendor[:attributes][:description],
        contact_name: market_vendor[:attributes][:contact_name],
        contact_phone: market_vendor[:attributes][:contact_phone],
        credit_accepted: market_vendor[:attributes][:credit_accepted]
      }
      all_market_vendors << Vendor.new(data)
    end
    all_market_vendors
  end
end