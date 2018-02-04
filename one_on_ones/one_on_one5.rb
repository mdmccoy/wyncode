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

  def initialize
    @directions = [Direction.new('n', 'North'),
                   Direction.new('e', 'East'),
                   Direction.new('s', 'South'),
                   Direction.new('w', 'West')]
  end
end

my_compass = Compass.new

get '/' do
  # CGI.escapeHTML(my_compass.to_s)
  case params['direction'].downcase
  when 'n'
    'The direction corresponding to n is North'
  when 'e'
    'The direction corresponding to e is East'
  when 's'
    'The direction corresponding to s is South'
  when 'w'
    'The direction corresponding to w is West'
  else
    "I don't know that direction."
  end
end
