require 'rails_helper'

RSpec.describe "Vendors Show Page", type: :feature do
  it "lists the name, contact information, whether or not they accept credit, and a description of what they sell" do
    json_response = File.read("spec/fixtures/single_vendor.json")
    stub_request(:get, "http://localhost:3000/api/v0/vendors/55823").to_return(status: 200, body: json_response)

    visit "/vendors/55823"

    within ".contact_info" do
      expect(page).to have_content("Contact Info:")
      expect(page).to have_content("Contact Name: Claudie Langworth III")
      expect(page).to have_content("Contact Phone: 1-147-179-9747")
    end

    within ".additional_info" do
      expect(page).to have_content("Additional Info:")
      expect(page).to have_content("Credit_accepted? false")
      expect(page).to have_content("Description: Vendor selling a variety of artisanal cured meats and sausages.")
    end
  end
end