require_relative 'voter'
require_relative 'politician'


class World
  def initialize
    @voters = []
    @politicians = []
  end

  def get_input
    gets.chomp
  end

  def main_menu
    puts "\nWhat would you like to do?\n(C)reate, (L)ist, (U)pdate, or (D)elete"
    case get_input
    when "c"
      create
    when "l"
      list
    when "u"
      update
    when "d"
      destroy
    end
  end

  def create
    puts "\nWhat would you like to create?\n(P)olitician or (V)oter"
    input = get_input
    puts "\nWhat is the name?"
    name = get_input
    case input.downcase
    when "p"
      puts "\nWhat is the political party?\n(D)emocrat or (R)epublican?"
      party = get_input
      @politicians << Politician.new(name,party)
    when "v"
      puts "\nWhat is the political affiliation?\n(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, (N)eutral?"
      party = get_input
      @voters =  Voter.new(name,party)
    end
    main_menu
  end

  def list
    @politicians.each do |pol|
      puts "#{pol.class}, #{pol.name}, #{pol.party}"
    end
    @voters.each do |voter|
      puts "#{voter.class}, #{voter.name}, #{voter.pol_affil}"
    end
    main_menu
  end

  def update

  end

  def destry

  end
end

World.new.main_menu
