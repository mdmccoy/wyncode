# #Create a while loop that outputs the square roots of the odd positive integers less than or equal to 25. The output of your program should look like this:
#
# count = 1
# while count <= 25
#   if count % 2 > 0
#     puts "The square root of #{count} equals #{Math.sqrt(count)}"
#   end
# count +=1
# end

#count.odd
#increment by two

# Create a method named element_index that accepts two arguments named element and my_array. If element is in my_array, then return the index (or position) of element within my_array. If element isn't in my_array, return -1. YOU MUST USE LOOPS. Your method can be tested like this:
#

def element_index(element,my_array)
  my_array.each do |n|
  #  p n
    if n == element
    #  p n
      return my_array.index(n)
    end
  end
  return -1
end

# p element_index("b", ["a", "b", "c"])
# # should output 1
#
puts element_index("hello", ["a", "b", "c"])
# # should output -1
