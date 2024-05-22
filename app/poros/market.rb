class Market
  attr_reader :id, :name, :city, :state
  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @city = data[:city]
    @state = data[:state]
  end
end