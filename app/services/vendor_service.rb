# class VendorService
#   def call_api_single(vendor_id)
#     new_call = Faraday.get("http://localhost:3000/api/v0/vendors/#{vendor_id}")
#     json_full_response = JSON.parse(new_call.body, symbolize_names: true)
#     json_data = json_full_response[:data]
#   end
# end