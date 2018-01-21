require_relative 'person'

class Politician < Person
  attr_reader :party

  def initialize(name,party)
    super(name)
    @party = party
  end
end
