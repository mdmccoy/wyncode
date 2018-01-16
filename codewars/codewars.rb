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
