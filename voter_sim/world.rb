require_relative 'voter'
require_relative 'politician'

class World

  def main_menu
    puts "What would you like to do?\n(C)reate, (L)ist, (U)pdate, or (D)elete"
    input = gets.chomp.downcase
    case input
    when "c"
      create
    when "l"
      list
    when "u"
      update
    when "d"
      delete
    end
  end

  def create
    puts

end
