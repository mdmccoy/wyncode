require_relative 'zebra'
#require 'pry'


matt_zebra = Zebra.new("Matt","Wynwood")
zebra1 = Zebra.new("Matt","Wynwood")
zebra2 = Zebra.new("Matt","Wynwood")
zebra3 = Zebra.new("Matt","Wynwood")
zebra4 = Zebra.new("Matt","Wynwood")

zebra3.sex


puts Zebra.population_count
puts Zebra.extinct

#binding.pry

p zebra1.take_a_piss


# class A_Class
#   def self.class_method
#     self
#   end
#
#   def a_method
#     self
#   end
# end
#
# p A_Class.class_method
# p A_Class.new.a_method
