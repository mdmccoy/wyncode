require_relative 'voter'
require_relative 'politician'
#require 'pry'


class World
  def initialize
    @voters = []
    @politicians = []
  end

  def get_input
    gets.chomp
  end

  #searches through an array for a specific voter/politician and return the first copy, return nil if we don't find anything
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

    #if the input doesn't match our case, call main_menu again.
    main_menu
  end

  #create a new politician or voter and add them to our world
  def create
    #get some of the information we need to make a new person
    puts "\nWhat would you like to create?\n(P)olitician or (V)oter"
    input = get_input.downcase
    puts "\nWhat is the name?"
    name = get_input

    case input
    when "p"
      puts "\nWhat is the political party?\n(D)emocrat or (R)epublican?"

      #grab the last piece of info that we need, the party, and pass it to party_select to get the full string. Then create a new politician, then put that politician into our array
      @politicians << Politician.new(name,Politician.party_select(get_input))
      puts "\nPolitician added to the world."

    when "v"
      puts "\nWhat is the political affiliation?\n(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, (N)eutral?"

      #grab the last piece of info that we need, the party, and pass it to party_select to get the full string. Then create a new voter, then put that voter into our array
      @voters << Voter.new(name,Politician.party_select(get_input))
      puts "\nVoter added to the world."
    end

    #return to main_menu
    main_menu
  end

  #list out all of the politicians and voters, then return to main_menu
  def list
    @politicians.each do |pol|
      puts "#{pol.class}, #{pol.name}, #{pol.party}"
    end
    @voters.each do |voter|
      puts "#{voter.class}, #{voter.name}, #{voter.party}"
    end

    #return to main_menu
    main_menu
  end

  #allows us to update existing perople
  def update
    puts "\nWho would you like to update?"
    name = get_input

    #search the @politicians array and see if the requested name is present. If it is, let us change the party.
    politician = search(@politicians,name)
    if politician.is_a? Politician
      puts "\nNew Party?"
      politician.party = Politician.party_select(get_input)
    end

    #search the @voters array and see if the requested name is present. If it is, let us change the party.
    voter = search(@voters,name)
    if voter.is_a? Voter
      puts "\nNew Politics?"
      voter.party = Voter.party_select(get_input)
    end

    #return to main_menu
    main_menu
  end



  def delete
    puts "\nWho would you like to delete?"
    name = get_input

    #search the @politicians array and see if the requested name is present. If it is, check to make sure we want to delete it before doing so.
    politician = search(@politicians,name)
    if politician.is_a? Politician
      puts "\nAre you sure?\n(Y)es"
      @politicians.delete(pol) if get_input == "y"
    end

    #search the @voters array and see if the requested name is present. If it is, check to make sure we want to delete it before doing so.
    voter = search(@voters,name)
    if voter.is_a? Voter
      puts "\nAre you sure?\n(Y)es"
      @voters.delete(voter) if get_input == "y"
    end

    #return to main_menu
    main_menu
  end
end


World.new.main_menu
