class Portfolio

  def initialize(options = {})
    @name = options[:name]
    @stocks = options[:socks] || []
  end

end