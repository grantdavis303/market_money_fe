class MarketService
  def call_api_all
    new_call = Faraday.get("http://localhost:3000/api/v0/markets")
    json_full_response = JSON.parse(new_call.body, symbolize_names: true)
    json_data = json_full_response[:data]
  end

  def call_api_single(id)
    new_call = Faraday.get("http://localhost:3000/api/v0/markets/#{id}")
    json_full_response = JSON.parse(new_call.body, symbolize_names: true)
    json_data = json_full_response[:data]
  end
end