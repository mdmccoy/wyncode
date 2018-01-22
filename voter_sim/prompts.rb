module Prompts
  #puts prompt to screen, gets input and returns a single character
  def self.main_menu
    puts "\nWhat would you like to do?\n(C)reate, (L)ist, (U)pdate, or (D)elete"
    gets.chomp.downcase
  end

  def self.person_type
    puts "\nWhat would you like to create?\n(P)olitician or (V)oter"
    gets.chomp.downcase
  end

  def self.get_name
    puts "\nWhat is the name?"
    gets.chomp
  end

  #puts update prompt to screen and returns an array with the answers
  def self.update_person()
    #input = []
    puts "\nWho would you like to update?"
    gets.chomp
  end

  def self.delete_person
    puts "\nWho would you like to delete?"
    gets.chomp
  end

  def self.confirmation
    puts "\nAre you sure? (Y/N)"
    gets.chomp.downcase
  end

  def self.politician_party
    puts "\nWhat is the political party?\n(D)emocrat or (R)epublican?"
    gets.chomp.downcase
  end

  def self.voter_party
    puts "\nWhat is the political affiliation?\n(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, (N)eutral?"
    gets.chomp.downcase
  end
end
