require 'sinatra'

directions = %w[north east south west]
# p directions[3]

compass = {
  n: 'north',
  e: 'east',
  s: 'south',
  w: 'west'
}
# p compass[:n]

class Direction
  attr_reader :abbreviation, :_direction_name

  def initialize(abbreviation, _direction_name)
    @abbreviation = abbreviation
    @_direction_name = _direction_name
  end
end

Direction.new('n', 'north')

dir = Direction.new('n', 'North')
# p dir, dir.abbreviation, dir._direction_name

class Compass
  attr_reader :directions

  def initialize(compass)
    @directions = %w[n s e w].map { |dir| Direction.new(dir, compass[dir.to_sym]) }
  end
end

p my_compass = Compass.new(compass)

get '/' do
  # CGI.escapeHTML(my_compass.to_s)
  dir = params['direction'].downcase.to_sym
  "The direction corresponding to #{dir} is #{compass[dir].capitalize}."
end
