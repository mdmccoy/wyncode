require_relative 'person'

class Voter < Person
  def initialize(name,party)
    case party
    when "l"
      super(name,"Liberal")
    when "c"
      super(name,"Conservative")
    when "t"
      super(name,"Tea Party")
    when "s"
      super(name,"Socialist")
    when "n"
      super(name,"Neutral")
    end
  end
end
