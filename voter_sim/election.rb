require_relative 'voter'
require_relative 'politician'
require_relative 'prompts'

class Election
  include Prompts

  def initialize
    @voters = []
    @politicians = []
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
    else
      puts "\nEnter a valid menu item."
    end

    main_menu
  end

  #create a new politician or voter and add them to our world
  def create
    begin
      case person_type
      when "p"
        @politicians << Politician.new(get_name,politician_party)
        puts "\nPolitician added to the world."
      when "v"
        @voters << Voter.new(get_name,voter_party)
        puts "\nVoter added to the world."
      else
        puts "Invalid person type."
      end

    rescue
      puts "Please enter a valid name and party."
    end
    main_menu
  end

  #list out all of the politicians and voters
  def list
    sort

    puts "\nPoliticians:"
    @politicians.each {|pol| puts "#{pol.class}, #{pol.name}, #{pol.party}" }
    puts "\nVoters:"
    @voters.each {|voter| puts "#{voter.class}, #{voter.name}, #{voter.party}"}

    main_menu
  end

  #allows us to update existing perople
  def update
    name = modify_person("update")

    if politician = search(@politicians,name)[0]
      politician.party = Politician.party_select(politician_party)
      puts "Updated!"
    elsif voter = search(@voters,name)[0]
      voter.party = Voter.party_select(voter_party)
      puts "Updated!"
    else
      invalid_input
    end

    main_menu
  end

  #deletes someone from the array
  def delete
    name = modify_person("delete")

    if politician = search(@politicians,name)[0]
      @politicians.delete(politician)
      puts "\nDeleted!" if confirmation == "y"
    elsif voter = search(@voters,name)[0]
      @voters.delete(voter)
      puts "\nDeleted!" if confirmation == "y"
    else
      invalid_input
    end

    main_menu
  end

  #searches through an array for a specific voter/politician and return the first copy, return nil if we don't find anything
  def search(array,name) sort; array.select { |person| person if person.name == name } end

  #Sorts arrays by name
  def sort
    @voters = @voters.sort {|a,b| a.name <=> b.name}
    @politicians = @politicians.sort {|a,b| a.name <=> b.name}
  end
end

# Election.new.main_menu
