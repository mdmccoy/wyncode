class Person
  attr_reader :name
  attr_accessor :party

  def initialize(name,party)
    @name = name
    @party = party
  end
end
