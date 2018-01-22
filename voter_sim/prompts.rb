module Prompts
  #puts prompt to screen, gets input and returns a single character
  def main_menu_prompt
    ask_downcase "\nWhat would you like to do?\n(C)reate, (L)ist, (U)pdate, or (D)elete\n"
  end

  def person_type
    ask_downcase "\nWhat would you like to create?\n(P)olitician or (V)oter\n"
  end

  def get_name
    ask "\nWhat is the name?\n"
  end

  def modify_person(modification)
    ask "\nWho would you like to #{modification}?\n"
  end

  def confirmation
    ask_downcase "\nAre you sure? (Y/N)\n"
  end

  def politician_party
    ask_downcase "\nWhat is the political party?\n(D)emocrat or (R)epublican?\n"
  end

  def voter_party
    ask_downcase "\nWhat is the political affiliation?\n(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, (N)eutral?\n"
  end

  def ask_downcase(*question)
    ask(*question).downcase
  end

  def ask(*question)
    print(*question)
    gets.chomp
  end

end
