require_relative 'person'

class Politician < Person
  def initialize(name,party)
    super(name)
    @party = party
  end
end
