*************
To run an election, create a new instance of World and call World#main_menu
*************


To do -
- Move the control flow to a 'election.rb', so that it is possible for a world to hold multiple elections.


To done -
- Move prompts to 'prompts.rb' module and then just call the method in the world
- Prompts class should be a module, not a class dummy
- When updating, don't check to see if what you got back from @politicians or @voters is the right class, just check to make sure it isn't nil
- split up Prompts#create_person into three methods so that it isn't returning an array that we have to know about to use
- Change search method so Array#select, so that we return an empty array if we don't get what we were looking for, will need to refactor some stuff to accommodate this.
