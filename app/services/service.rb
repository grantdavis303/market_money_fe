class Service
  def all_markets
    get_url("/api/v0/markets")
  end

  def single_market(id)
    get_url("/api/v0/markets/#{id}")
  end

  def all_market_vendors(id)
    get_url("/api/v0/markets/#{id}/vendors")
  end

  def single_vendor(id)
    get_url("/api/v0/vendors/#{id}")
  end

  def get_url(url)
    response = api_connection.get(url)
    json = JSON.parse(response.body, symbolize_names: true)
    json[:data]
  end

  def api_connection
    Faraday.new(url: "http://localhost:3000")
  end
end