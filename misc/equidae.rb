module Piss
  def take_a_piss
    "Ahhhhhhhh"
  end
end

class Equidae
  attr_reader :name,:sex,:stripes
  attr_accessor :location,:energy_level

  include Piss

  @@population = []
  @@extinct = true

  def initialize(name,location)
    @name = name
    @sex =  if [*1..2].sample == 1
      "Male"
    else
      "Female"
    end
    @location = location
    @energy_level =  100
    @@population << self
  end

  def eat_grass
    @energy_level += 10
  end

  def drink_water
    @energy_level += 10
  end

  def run
    @energy_level -= 10
  end

  def self.population_count
    @@population.count
  end

  def self.extinct
    if @@population.count > 0
      false
    else
      true
    end
  end
end
