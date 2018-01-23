require_relative 'person'

class Politician < Person
  def initialize(name,party)
    super(name,Politician.party_select(party))
  end


  def self.party_select(party)
    case party.downcase
    when "d"
      "Democrat"
    when "r"
      "Republican"
    end
  end
end
