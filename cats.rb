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

cats = []
100.times do
  cats << { hat: true }
end

pass = 1
100.times do
  if pass == 1
    cats.each do |cat|
      cat[:hat] = false
    end
  end
  if pass == 2
    count = 1
    cats.each do |cat|
      if count == 1 || count % 2 > 0
        cat[:hat] = true
      end
      count += 1
    end
  end
  if pass == 3
    count = 1
    cats.each do |cat|
      if count != 1 && count % 3 == 0
        if cat[:hat] == true
          cat[:hat] = false
        else
          cat[:hat] = true
        end
      end
    end
    p cats
  end

  pass += 1
end
