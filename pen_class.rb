class Pen

  attr_reader :color
  attr_accessor :clicked,:ink_level

  def initialize(color,clicked,ink_level=100)
    @color =  color
    @clicked = clicked
    @ink_level = ink_level
  end

end

p my_pen = Pen.new("Ochre")

#p my_pen.color
#my_pen.color = "Red"
#p my_pen.methods - Object.methods
