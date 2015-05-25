require 'pry'

require_relative 'client'
require_relative 'portfolio'
require_relative 'stock'
require_relative 'brokerage'
 
brokerage1 = Brokerage.new name: "nvestec"

client1 = Client.new name: "Brian", balance: 800 
client2 = Client.new name: "Anne" , balance: 1000 
client3 = Client.new name: "Ellen", balance: 950

[client1, client2, client3].each { |client| brokerage1.clients << client}

portfolio1 = Portfolio.new p_name: "portfolio1"
portfolio2 = Portfolio.new p_name: "portfolio2"
portfolio3 = Portfolio.new p_name: "portfolio3"

# [portfolio1, portfolio2, portfolio3].each { |portfolio| client1 << portfolio }

client1.portfolios << portfolio1 << portfolio3

stock1 =  Stock.new no_of_shares: 10 , stocks_name: "EBRN" , share_price: 1.45

stock2 =  Stock.new no_of_shares: 7 , stocks_name: "RTBV" , share_price:  2.09

stock3 =  Stock.new no_of_shares: 20 , stocks_name:  "RSTV", share_price: 1.54

portfolio1.stocks << stock1 << stock2

def menu
  puts 'clear'
  puts "-" * 80
  puts "(1) Create a client \n(2) create a portfolio \n(3) Purchase stocks \n(4) sell stocks \n(5) list clients and their balances \n(6) list a client's portfolio and associated values \n(7)list all stocks in a portfolio and associated values \n(8) quit program" 
  puts "-" * 80
  gets.chomp.to_i
end



response = menu

while response != 8
  case response
  
  when 1
    puts "What's your name?\n"
    name = gets.chomp
    puts "what's your balance?\n"
    balance = gets.chomp.to_i
    client = Client.new ({name: name, balance: balance})
    puts client
  when 2 
    puts "select a client"
    puts "What's the name of the portfolio you like to create?\n"
    name = gets.chomp
    client = Portfolio.new ({name: name, })
    puts client
  when 3 


  when 4 

  when 5 
  brokerage1.list_clients
  when 6

  when 7
    portfolio1.list_stocks
    binding.pry 
  
  end
  
  puts '-' * 80
  puts 'press enter to continue'
  gets
  response = menu 
end