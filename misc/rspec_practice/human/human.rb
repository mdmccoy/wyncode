class Human
  attr_reader :tummy,:state
  def initialize
    @tummy = "hungry"
    @state = "sleepy"
  end

  def breakfast
    @tummy = "full"
    @state = "awake"
  end
end
