require_relative 'person'

class Politician < Person
  def initialize(name,party)
    case party
    when "d"
      super(name,"Democrat")
    when "r"
      super(name,"Republican")
    end
  end
end
