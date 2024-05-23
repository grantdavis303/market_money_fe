require 'rails_helper'

RSpec.describe "Markets Show Page", type: :feature do
  it "lists market infortion and all market vendors" do
    json_response = File.read("spec/fixtures/all_markets.json")
    stub_request(:get, "http://localhost:3000/api/v0/markets").to_return(status: 200, body: json_response)

    json_response = File.read("./spec/fixtures/single_market.json")
    stub_request(:get, "http://localhost:3000/api/v0/markets/322458").to_return(status: 200, body: json_response)

    json_response = File.read("./spec/fixtures/vendors_by_market.json")
    stub_request(:get, "http://localhost:3000/api/v0/markets/322458/vendors").to_return(status: 200, body: json_response)
    
    visit "/markets/322458"

    within ".address" do
      expect(page).to have_content("1400 U Street NW")
      expect(page).to have_content("Washington, District of Columbia 20009")
    end

    within ".all_vendors" do
      expect(page).to have_content("Vendors at Our Market")
      expect(page).to have_link("The Charcuterie Corner", href: "/vendors/55823")
    end
  end
end