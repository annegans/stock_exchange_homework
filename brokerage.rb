class Brokerage

attr_accessor :name, :clients

  def initialize(options = {}) 
    @name = options[:name]
    @clients = options[:clients] || []
  end 

  def list_clients
  @clients.each { |client| puts " client = #{no_of_shares}, balance = #{ }" }
  end  

end







# class  
# attr_accessor :animals, :clients

#   def initialize(options = {}) 
#     @adress = options[:adress]
#     @animals = options[:animals] || []
#     @clients =options[:clients] || []
#   end

# def list_animals
#   @animals.each { |animal| puts " Animal = #{animal.name}, #{animal.breed }, #{animal.code }" }
# end  
    
# end
