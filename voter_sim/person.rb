class Person
  attr_reader :name
  attr_accessor :party

  def initialize(name,party)
    @name = name
    if party.nil?
      raise ArgumentError
    else
      @party = party
    end
  end
end
