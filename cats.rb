# There are 100 cats in a row all wearing hats. 🐱
#
# Make 100 passes over the cats.
#
# On the first pass, visit every cat and remove its hat. 🙀
#
# On the second pass, visit every other cat and replace its hat. 😺
#
# On the third pass, visit every third cat. If the cat is hatted, remove its hat 😿. If the cat is un-hatted, replace its hat. 😺
#
# On the 4th-100th passes, do the same. Add hats if they don’t exist and remove hats if they do.
#
# On the 100th pass, you should only visit the 100th cat (the last cat), removing or replacing its hat appropriately.
#
# Write a program that outputs which cats have hats 😺 and which cats do not 😾 at the end of the 100th iteration.
#
# Note: Cat emojis are not required. 🐶


#hat_swap takes an array of hashes, and the pass, or number of times we have
#iterated through the array. It then swaps the hats of every n-th cat, where
#n is == pass. Once it's done, it returns the array.

#need to look into this further, not sure if the loop is working the way I want it too
def hat_swap(cats,pass)
  #if we are on pass 100, visit the 100th cat and swap his hat
  if pass == 100
    if cats[99][:hat]
      cats[99][:hat] = false
    else
      cats[99][:hat] = true
    end

  #otherwise, visit cat 1 and the the nth cat after him until we get to the end
  else
    count = 0
    while count <= 99
      if cats[count][:hat]
        cats[count][:hat] = false
      else
        cats[count][:hat] = true
      end
      count += pass
    end
  end
  return cats
end

#intialize our pass variable and our array of cats
pass = 1
cats = []
100.times do
  cats << { hat: true }
end

#make 100 passes on the cats, swapping hats along the way
100.times do
  cats=hat_swap(cats,pass)
  pass += 1
end

#p out the cats. I'd like to clean this up a bit.
cats.each do |cat|
  if cat[:hat]
    puts "I'm a cat and I have a hat!"
  else
    puts "I'm a cat and I DO NOT have a hat!"
  end
end
