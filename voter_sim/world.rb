require_relative 'voter'
require_relative 'politician'
require './prompts'
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
    case Prompts.main_menu
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

    input = Prompts.create_person

    case input[0]
    when "p"
      #grab the last piece of info that we need, the party, and pass it to party_select to get the full string. Then create a new politician, then put that politician into our array
      @politicians << Politician.new(input[1],Politician.party_select(input[2]))
      puts "\nPolitician added to the world."
    when "v"
      #grab the last piece of info that we need, the party, and pass it to party_select to get the full string. Then create a new voter, then put that voter into our array
      @voters << Voter.new(input[1],Voter.party_select(input[2]))
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
    name = Prompts.update_person()

    #search the @politicians array and see if the requested name is present. If it is, let us change the party.
    politician = search(@politicians,name)
    if politician.is_a? Politician
      politician.party = Politician.party_select(Prompts.politician_party)
    end

    #search the @voters array and see if the requested name is present. If it is, let us change the party.
    voter = search(@voters,name)
    if voter.is_a? Voter
      #puts "\nNew Politics?\n(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, (N)eutral?"
      voter.party = Voter.party_select(Prompts.voter_party)
    end

    #return to main_menu
    main_menu
  end



  def delete
    #puts "\nWho would you like to delete?"
    name = Prompts.delete_person

    #search the @politicians array and see if the requested name is present. If it is, check to make sure we want to delete it before doing so.
    politician = search(@politicians,name)
    if politician.is_a? Politician
      @politicians.delete(politician) if Prompts.confirmation == "y"
    end

    #search the @voters array and see if the requested name is present. If it is, check to make sure we want to delete it before doing so.
    voter = search(@voters,name)
    if voter.is_a? Voter
      @voters.delete(voter) if Prompts.confirmation == "y"
    end

    #return to main_menu
    main_menu
  end
end


World.new.main_menu
