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

########WE START ON THE pass-cat each time, so on the 4th pass, start on the 4th cat and so on

#hat_swap takes an array of hashes, and the pass, or number of times we have
#iterated through the array. It then swaps the hats of every n-th cat, where
#n is == pass. Once it's done, it returns the array.
def hat_swap(cats,pass)
  count = pass-1
  while count <= 99 do
    if cats[count][:hat]
      cats[count][:hat] = false
    else
      cats[count][:hat] = true
    end
    count +=  pass
  end
  cats
end

#intialize our pass variable and our array of cats
pass = 1
cats = []
100.times do
  cats << { hat: true }
end
puts "Hatted the cats!"

#make 100 passes on the cats, swapping hats along the way
100.times do
  cats=hat_swap(cats,pass)
  pass += 1
end

#p out the cats. I'd like to clean this up a bit.
count = 1
hatted = 0
bald = 0
cats.each do |cat|
  if cat[:hat]
    puts "I'm cat #{count} and I have a hat!"
    hatted += 1
  else
    puts "I'm cat #{count} and I DO NOT have a hat!"
    bald +=1
  end
  count += 1
end

p hatted
p bald
