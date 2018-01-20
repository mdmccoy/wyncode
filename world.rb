# In whichever directory you are storing your work here at Wyncode, go ahead and create a world.rb file. We’re going to begin creating a new world. Open that file and create a class Person. This is the factory that people in your world will be made from. New Person are born by calling Person.new. Let’s create a new person sandy, by setting Person.new equal to sandy. When we make these Person, however, they don’t have any attributes. For example, let’s try to see what sandy’s hair color is by calling sandy.hair_color. You should get an error. So let’s give our Person class an attribute of hair_color so you can assign, read, and write sandy‘s hair_color (or any instance of the Person class). Now set sandy’s hair color. Submit all of your code in the world.rb file.

class Person

  attr_accessor :hair_color,:name

  @@everyone = []

  def initialize(hair_color,name)
    @hair_color =  hair_color
    @name = name
  end

  def sing
    "Didn't even have to use my AK, I gotta say, today was a good day."
  end

  def save
    @@everyone << self
    @@everyone.each {|one| p one}
  end

  def self.riot
    puts "The people are rising up!"
    @@everyone.each {|p| puts "#{p.name} is rioting!"}
  end
end

class Wyncoder < Person
  def code
    "I am coding!"
  end

  # def to_s
  #   "Hi, my name is #{@name}!\nI have #{@hair_color.downcase} colored hair!"
  # end
  #
  # def inspect
  #   "I am the object: #{self.object_id}\nI have these instance variables: #{self.instance_variables}\nI have these methods: #{self.methods - Object.methods}"
  # end
end


# sandy = Person.new("Brown","Sandy Rivers")
# sandy.save
# walter =  Person.new("Orange","Walter")
# walter.save
#
# Person.riot

args = [
    ['a', 'apple', ],
    ['b', 'banana', ],
    ['c', 'cantelope', ],
]
    .map{|args| Person.new(*args)}
    .each do |person|
        p person.save
    end
#sandy.code will not work as the #code method is definded in the Wyncoder class.
