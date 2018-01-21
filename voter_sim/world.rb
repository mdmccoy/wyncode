require_relative 'voter'
require_relative 'politician'
require 'pry'


class World
  def initialize
    @voters = []
    @politicians = []
  end

  def get_input
    gets.chomp
  end

  def search(array,name)
    array.each { |person| return person if person.name == name }
    nil
  end

  def main_menu
    puts "\nWhat would you like to do?\n(C)reate, (L)ist, (U)pdate, or (D)elete"
    case get_input.downcase
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
    puts "\nWhat would you like to create?\n(P)olitician or (V)oter"
    input = get_input
    puts "\nWhat is the name?"
    name = get_input
    case input.downcase
    when "p"
      puts "\nWhat is the political party?\n(D)emocrat or (R)epublican?"
      @politicians << Politician.new(name,Politician.party_select(get_input))
    when "v"
      puts "\nWhat is the political affiliation?\n(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, (N)eutral?"
      @voters << Voter.new(name,Politician.party_select(get_input))
    end
    main_menu
  end

  def list
    @politicians.each do |pol|
      puts "#{pol.class}, #{pol.name}, #{pol.party}"
    end
    @voters.each do |voter|
      puts "#{voter.class}, #{voter.name}, #{voter.party}"
    end
    main_menu
  end

  def update
    puts "\nWho would you like to update?"
    name = get_input

    politician = search(@politicians,name)
    if politician.is_a? Politician
      puts "\nNew Party?"
      politician.party = Politician.party_select(get_input)
    end

    voter = search(@voters,name)
    if voter.is_a? Voter
      puts "\nNew Politics?"
      voter.party = Voter.party_select(get_input)
    end

    main_menu
  end



  def delete
    puts "\nWho would you like to delete?"
    name = get_input

    @politicians.each do |pol|
      if name == pol.name
        puts "\nAre you sure?\n(Y)es"
        if get_input == "y"
          @politicians.delete(pol)
        end
      end
    end

    @voters.each do |voter|
      if name == voter.name
        puts "\nAre you sure?\n(Y)es"
        if get_input == "y"
          @voters.delete(voter)
        end
      end
    end

    main_menu
  end
end


World.new.main_menu
