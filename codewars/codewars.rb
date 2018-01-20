# #count number of 1s in the binary representation of a number
#
# def count_bits(n)
#   # TODO: Program me
#   count = 0
#   n.to_s(2).split("").each {|num| count += 1 if num.to_i == 1}
#   count
# end
#
# #Test.assert_equals count_bits(0), 0
#  p count_bits(10)
# #Test.assert_equals count_bits(4), 1
# #Test.assert_equals count_bits(7), 3
# #Test.assert_equals count_bits(9), 2
# #Test.assert_equals count_bits(10), 2


##########################
##########################
##########################

# def remove_smallest(numbers)
#   #throw NotImplementedError.new "TODO: remove_smallest"
#   #index_of_first_min = numbers.index(numbers.min)
#   if numbers.empty?
#     numbers
#   else
#     copy = numbers
#     copy.delete_at(copy.index(numbers.min))
#     copy
#   end
# end
#
# p remove_smallest([2, 2, 1, 2, 1]) #, [2, 2, 2, 1]
# p remove_smallest([]) #, "Wrong result for []"

#########################
#########################
#########################

# def maskify(cc)
#   # your beautiful code goes here
#   return_string = ""
#   count = 0
#   cc.each_char do |chr|
#     count <= cc.length - 5 ? return_string  += "#" : return_string += chr
#     count += 1
#   end
#   return_string
# end
#
#
# p maskify('4556364607935616') # should return '############5616'
# p maskify('64607935616')      # should return '#######5616'
# p maskify('1')                # should return '1'
# p maskify('')                 # should return ''
#
# # "What was the name of your first pet?"
# maskify('Skippy')                                   # should return '##ippy'
# maskify('Nananananananananananananananana Batman!') # should return '####################################man!'

###########################
###########################
###########################
#
# Well, you may have guessed it by now, but to be clear: you need to create a fibonacci function that given a signature array/list, returns the first n elements - signature included of the so seeded sequence

# def tribonacci(signature,n)
#   count = 0
#   until count >= n do
#     signature << (signature[count] + signature[count+1] + signature[count+2])
#     count += 1
#   end
#   signature.first(n)
# end
#
#
# p tribonacci([1,1,1],10) #[1,1,1,3,5,9,17,31,57,105]
# p tribonacci([1,1,1],1) #[1]
# p tribonacci([300,200,100],0)

############################
############################
############################
#
# You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.
#
# #Example: longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
#
# n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

############################
###########################
###########################

# def longest_consec(strarr, k)
#   count = 0
#   longest = ""
#   if strarr.length == 0 or k > strarr.length or k <= 0
#     return ""
#   end
#   while count <= strarr.length-k do
#     my_arr = strarr.slice(count,k)
#     #slice out K elements? and then join?
#     unless my_arr.nil? && my_arr.length > k
#       if my_arr.join.length > longest.length
#         longest = my_arr.join
#       end
#     end
#     count += 1
#   end
#   longest
# end
#
# p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2)

############################
###########################
###########################

# You will be given a number and you will need to return it as a string in Expanded Form. For example: THIS FUCKING WORKS BUT DIGITS DOESN'T EXIST IN Ruby 2.3.1
# def expanded_form(num)
#   return_arr = []
#   base = 1
#   num.digits.each do |digit|
#     return_arr << (digit * base) if digit > 0
#     base *= 10
#   end
#   return_arr.reverse.join(" + ")
# end
# def expanded_form(num)
#   return_arr = []
#   base = 1
#   num.to_s.split("").reverse.each do |digit|
#     return_arr << (digit.to_i * base) if digit.to_i > 0
#     base *= 10
#   end
#   return_arr.reverse.join(" + ")
# end
#
# #
#  p expanded_form(12); # Should return '10 + 2'
#  p expanded_form(42); # Should return '40 + 2'
#  p expanded_form(70304); # Should return '70000 + 300 + 4'
# # NOTE: All numbers will be whole numbers greater than 0.

################################
#################################
################################
#
# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
#
def unique_in_order(arg)

end


#
# unique_in_order('AAAABBBCCDAABBB') #== ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')        # == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])      # == [1,2,3]
