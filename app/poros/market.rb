class Market
  attr_reader :id, :name, :street, :city, :state, :zip
  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @street = data[:street]
    @city = data[:city]
    @state = data[:state]
    @zip = data[:zip]
  end
end