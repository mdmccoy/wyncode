def random_integer
  [*(2..15)].sample
end

def random_letter
  [*('a'..'z')].sample
end

def random_word
  word = []
  random_integer.times { word << random_letter }
  word.join('')
end

def random_phrase
  phrase = []
  random_integer.times { phrase << random_word }
  phrase.join(' ')
end

def random_sentence
  random_phrase.capitalize + '.'
end

p random_sentence
