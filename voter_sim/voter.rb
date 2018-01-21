require_relative 'person'

class Voter < Person
  attr_reader :pol_affil

  def initialize(name,pol_affil)
    super(name)
    @pol_affil = pol_affil
  end
end
