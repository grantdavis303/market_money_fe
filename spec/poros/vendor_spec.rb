require 'rails_helper'

RSpec.describe Vendor do
  it "exists and can initialize" do
    data = {
      id: 123,
      name: "Grant's Goods",
      description: "This is the description for the vendor.",
      contact_name: "Grant",
      contact_phone: "549-241-5461",
      credit_accepted: true
    }
    vendor = Vendor.new(data)

    expect(vendor).to be_a Vendor
    expect(vendor.id).to eq(123)
    expect(vendor.name).to eq("Grant's Goods")
    expect(vendor.description).to eq("This is the description for the vendor.")
    expect(vendor.contact_name).to eq("Grant")
    expect(vendor.contact_phone).to eq("549-241-5461")
    expect(vendor.credit_accepted).to eq(true)
  end
end