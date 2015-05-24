class Client
  def initialize(options = {})
    @name = options[:name]
    @balance = options[:balnce]
    @portfolio = options[:portfolio] || []
  end
end