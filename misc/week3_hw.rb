# class MyError < StandardError
#   def initialize
#     "This is my totally dope error."
#   end
# end
#
# p MyError.new

require 'money'

Money.add_rate("USD","CAD", 1.25)
Money.add_rate("CAD","USD", 0.80)

my_us_money = Money.new(10000, "USD")
my_ca_money = Money.ca_dollar(my_us_money).exchange_to("CAD")

puts "My US Money: " + my_us_money.symbol + (my_us_money.fractional/100).to_s
puts "My Canadian funny money: " + my_ca_money.symbol + (my_ca_money.fractional/100).to_s
