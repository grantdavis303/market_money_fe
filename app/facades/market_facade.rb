class MarketFacade
  def get_all_markets
    service = MarketService.new
    json_data = service.call_api_all

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
    service = MarketService.new
    json_data = service.call_api_single(id)
    data = {
      id: json_data[:id],
      name: json_data[:attributes][:name],
      city: json_data[:attributes][:city],
      state: json_data[:attributes][:state]
    }
    single_market = Market.new(data)
  end
end