
# write the methods here

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


##################DO NOT EDIT BELOW THIS LINE ############################

_pass, _fail = "passing", "failing"
methods = [
  :random_integer,
  :random_letter,
  :random_word,
  :random_phrase,
  :random_sentence,
]

methods_check_results = methods.map do |m|
  begin
    Object.send(m.to_sym)
  rescue NoMethodError
    "#{_fail}: Undefined method '#{m}.'"
  end
end

methods_check_results.each{|item| raise RuntimeError.new(item) if item.to_s.include?('failing')}

phrase_test = lambda{|phrase| phrase.split(' ')
                .map{|word| word.chars
                              .map{|letter| [*('a'..'z')]
                              .include?(letter)}
                              .all? }
                .all?}
sentence_test = lambda do |sentence|  [
    [*('A'..'Z')].include?(sentence.split(' ').first.chars.first),
    ['.', ].include?(random_sentence.split(' ').last.chars.last),
    sentence.split(' ').length > 2,
  ].all?
end
tests = [
  lambda{|int| [*(1..15)].include?(int)},
  lambda{|letter| [*('a'..'z')].include?(letter)},
  lambda{|word| word.chars.map{|letter| [*('a'..'z')].include?(letter)}.all? },
  phrase_test,
  sentence_test,
]

methods.zip(tests).map do |items|
  method_, test = items
  begin
    [method_, test.call(Object.send(method_))] if test
  rescue ArgumentError => err
    [method_, test, err]
  end
end.each do |method_, result|
  puts "#{method_} is failing." unless result
  puts "#{method_} is passing." if result
end
