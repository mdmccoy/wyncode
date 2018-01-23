class Person
  attr_reader :name
  attr_accessor :party

  def initialize(name,party)
    if party.to_s.empty? || name.to_s.empty?
      raise ArgumentError.new("Please enter a valid name and party.")
    else
      @name = name
      @party = party
    end
  end
end
