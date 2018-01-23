class Person
  attr_reader :name
  attr_accessor :party

  def initialize(name,party)
    if party.nil? || name.nil?
      throw ArguementError.new("Invalid arguement.")
    else
      @name = name
      @party = party
    end
  end
end
