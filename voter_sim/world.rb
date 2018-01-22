require_relative 'voter'
require_relative 'politician'
require_relative 'prompts'
#require 'pry'


class World
  def initialize
    @voters = []
    @politicians = []
  end

  #searches through an array for a specific voter/politician and return the first copy, return nil if we don't find anything
  def search(array,name)
    array.select { |person| person if person.name == name }
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
    #get all of the information we need to make a new person
    case Prompts.person_type
    when "p"
      @politicians << Politician.new(Prompts.get_name,Politician.party_select(Prompts.politician_party))
      puts "\nPolitician added to the world."
    when "v"
      @voters << Voter.new(Prompts.get_name,Voter.party_select(Prompts.voter_party))
      puts "\nVoter added to the world."
    end

    #return to main_menu
    main_menu
  end

  #list out all of the politicians and voters, then return to main_menu
  def list
    puts "\nPoliticians:"
    @politicians.each do |pol|
      puts "#{pol.class}, #{pol.name}, #{pol.party}"
    end
    puts "\nVoters:"
    @voters.each do |voter|
      puts "#{voter.class}, #{voter.name}, #{voter.party}"
    end

    main_menu
  end

  #allows us to update existing perople
  def update
    name = Prompts.update_person()

    #search the @politicians array and see if the requested name is present. If it is, let us change the party.
    politician = search(@politicians,name)[0]
    if politician
      politician.party = Politician.party_select(Prompts.politician_party)
    end

    #search the @voters array and see if the requested name is present. If it is, let us change the party.
    voter = search(@voters,name)[0]
    if voter
      voter.party = Voter.party_select(Prompts.voter_party)
    end

    #return to main_menu
    main_menu
  end

  def delete
    name = Prompts.delete_person

    #search the @politicians array and see if the requested name is present. If it is, check to make sure we want to delete it before doing so.
    politician = search(@politicians,name)[0]
    if politician
      @politicians.delete(politician) if Prompts.confirmation == "y"
    end

    #search the @voters array and see if the requested name is present. If it is, check to make sure we want to delete it before doing so.
    voter = search(@voters,name)[0]
    if voter
      @voters.delete(voter) if Prompts.confirmation == "y"
    end

    #return to main_menu
    main_menu
  end
end

World.new.main_menu
