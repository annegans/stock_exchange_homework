require 'pry'

require_relative 'client'
require_relative 'protfolio'
require_relative 'stock'
require_relative 'brokerage'


def menu
  puts 'clear'
  puts "-" * 80
  puts "(1) Create a client \n(2) create a portfolio \n(3) Purchase stocks \n(4) sell stocks \n(5) list a clients and their balances \n(6) lista a client's portfolio and associated values \n(7)list all stocks in a portfolio and associated values \n(8) quit  program" 
  puts "-" * 80
 gets.chomp.to_i
end


response = menu

while response != 8
  case response
  
  when 1
  
  
  when 2 

    
  when 3 

  when 4 

  when 5 
  
  when 6

  when 7

  end
  
  puts '-' * 80
  puts 'press enter to continue'
  gets
  response = menu 
end