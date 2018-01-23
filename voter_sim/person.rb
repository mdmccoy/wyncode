class Person
  attr_reader :name
  attr_accessor :party

  def initialize(name,party)
    if name.to_s.empty?
      raise ArgumentError.new("\nPerson name error.")
    else
      @name = name
      @party = party
    end
  end
end
