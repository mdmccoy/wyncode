require_relative 'person'

class Voter < Person
  def initialize(name,party)
    super(name,Voter.party_select(party))
  end


  def self.party_select(party)
    case party.downcase
    when "l"
      "Liberal"
    when "c"
      "Conservative"
    when "t"
      "Tea Party"
    when "s"
      "Socialist"
    when "n"
      "Neutral"
    end
  end
end
