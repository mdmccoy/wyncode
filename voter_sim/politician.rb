require_relative 'person'

class Politician < Person
  def initialize(name,party)
    super(name,party)
  end


  def self.party_select(party)
    case party
    when "d"
      "Democrat"
    when "r"
      "Republican"
    end
  end
end
