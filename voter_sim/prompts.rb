module Prompts
  #puts prompt to screen, gets input and returns a single character
  def main_menu_prompt
    puts "\nWhat would you like to do?\n(C)reate, (L)ist, (U)pdate, or (D)elete"
    gets_down
  end

  def person_type
    puts "\nWhat would you like to create?\n(P)olitician or (V)oter"
    gets_down
  end

  def get_name
    puts "\nWhat is the name?"
    my_gets
  end

  def modify_person(modification)
    puts "\nWho would you like to #{modification}?"
    my_gets
  end

  def confirmation
    puts "\nAre you sure? (Y/N)"
    gets_down
  end

  def politician_party
    puts "\nWhat is the political party?\n(D)emocrat or (R)epublican?"
    gets_down
  end

  def voter_party
    puts "\nWhat is the political affiliation?\n(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, (N)eutral?"
    gets_down
  end

  def gets_down
    my_gets.downcase
  end

  def my_gets
    gets.chomp
  end

end
