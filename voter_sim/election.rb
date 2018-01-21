class Election

  def self.main_menu
    puts "What would you like to do?\n(C)reate, (L)ist, (U)pdate, or (D)elete"
    case get_input
    when "c"
      create_menu
    when "l"
      list_menu
    when "u"
      update_menu
    when "d"
      destroy_menu
    end
  end
  


  def self.create_menu
    puts "What would you like to create?\n(P)olitician or (V)oter"
    input = get_input
    case input
    when "p"

    when "v"

    end

    main_menu
  end

  def self.list_menu

    main_menu
  end

  def self.update_menu
    puts "Who would you like to update?"

    main_menu
  end

  def self.destroy_menu
    puts "Who would you like to delete?"

    main_menu
  end

  def self.get_input
    gets.chomp.downcase
  end



end

Election.main_menu
