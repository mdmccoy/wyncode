require_relative 'person'

class Voter < Person
  def initialize(name,pol_affil)
    super(name)
    @pol_affil = pol_affil
  end
end
