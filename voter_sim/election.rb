require_relative 'voter'
require_relative 'politician'
require_relative 'prompts'
#require 'pry'

class Election
  include Prompts

  def initialize
    @voters = []
    @politicians = []
  end

  #searches through an array for a specific voter/politician and return the first copy, return nil if we don't find anything
  def search(array,name)
    sort
    array.select { |person| person if person.name == name }
  end

  def main_menu
    case main_menu_prompt
    when "c"
      create
    when "l"
      list
    when "u"
      update
    when "d"
      delete
    when "q"
      exit
    end

    #if the input doesn't match our case, call main_menu again.
    main_menu
  end

  #create a new politician or voter and add them to our world
  def create
    #get all of the information we need to make a new person
    case person_type
    when "p"
      @politicians << Politician.new(get_name,Politician.party_select(politician_party))
      puts "\nPolitician added to the world."
    when "v"
      @voters << Voter.new(get_name,Voter.party_select(voter_party))
      puts "\nVoter added to the world."
    end

    #return to main_menu
    main_menu
  end

  #list out all of the politicians and voters, then return to main_menu
  def list
    sort
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
    name = modify_person("update")

    #search the @politicians array and see if the requested name is present. If it is, let us change the party.
    if politician = search(@politicians,name)[0]
      politician.party = Politician.party_select(politician_party)
    end

    #search the @voters array and see if the requested name is present. If it is, let us change the party.
    if voter = search(@voters,name)[0]
      voter.party = Voter.party_select(voter_party)
    end

    #return to main_menu
    main_menu
  end

  def delete
    name = modify_person("delete")

    #search the @politicians array and see if the requested name is present.If it is, check to make sure we want to delete it before doing so.

    if politician = search(@politicians,name)[0]
      @politicians.delete(politician) ; puts "\nDeleted!" if confirmation == "y"

    end

    #search the @voters array and see if the requested name is present. If it is, check to make sure we want to delete it before doing so.
    if voter = search(@voters,name)[0]
      @voters.delete(voter) ; puts "\nDeleted!" if confirmation == "y"
    end

    #return to main_menu
    main_menu
  end

  def sort
    @voters = @voters.sort {|a,b| a.name <=> b.name}
    @politicians = @politicians.sort {|a,b| a.name <=> b.name}
  end
end

Election.new.main_menu
