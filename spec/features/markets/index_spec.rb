require 'rails_helper'

RSpec.describe "Markets Index Page", type: :feature do
  it "lists all markets" do
    json_response = File.read("spec/fixtures/all_markets.json")
    stub_request(:get, "http://localhost:3000/api/v0/markets").to_return(status: 200, body: json_response)

    json_response = File.read("spec/fixtures/single_market.json")
    stub_request(:get, "http://localhost:3000/api/v0/markets/322458").to_return(status: 200, body: json_response)

    visit markets_path

    within ".all_markets" do
      within ".im_322458" do
        expect(page).to have_link("14&U Farmers' Market")
        expect(page).to have_content("City: Washington")
        expect(page).to have_content("State: District of Columbia")
      end
    end
  end
end