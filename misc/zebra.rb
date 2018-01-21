require_relative 'equidae'

class Zebra < Equidae
  def initialize(name,location)
    super(name,location)
    @stripes = [*100..200].sample
  end
end
