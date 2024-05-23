require 'rails_helper'

RSpec.describe Market do
  it "exists and can initialize" do
    data = {
      id: 123,
      name: "Grant's Goods",
      street: "1234 Wewatta Lane",
      city: "Denver",
      state: "Colorado",
      zip: "80025"
    }
    market = Market.new(data)

    expect(market).to be_a Market
    expect(market.id).to eq(123)
    expect(market.name).to eq("Grant's Goods")
    expect(market.street).to eq("1234 Wewatta Lane")
    expect(market.city).to eq("Denver")
    expect(market.state).to eq("Colorado")
    expect(market.zip).to eq("80025")
  end
end