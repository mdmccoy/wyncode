
### 2 ways to create an empty hash`
hash = {}
our_hash = Hash.new()

# Objective - Create a Hash with a key/value pair
# On his first quiz of the semester, Quiz 1 (quiz1), Josh got a 92. On Quiz 2, (quiz2), Josh received an 87. Represent these scores with a Hash using the quiz name as the key and his score as the value. Store this result in a Hash named quiz_scores. You may use either Strings OR Symbols as your Hash keys.
#
# Example:
#
# Using Strings: homework_scores = {"hw1" => 88, "hw2" => 97}
# Using Symbols: homework_scores = {hw1: 88, hw2: 97}

quiz_scores = { quiz1: 92, quiz2: 87 }

# Objective - Create a Hash with many pairs
# The last 10 College Football National Championship winners are listed below. Input them into a Hash that pairs the year with the winning team.
#
# The Hash should be named national_champs. The key should be the year and the value should be the winning team.
#
national_champs = {
"2014" => "Ohio State",
"2013" => "Florida State",
"2012" => "Alabama",
"2011" => "Alabama",
"2010" => "Auburn",
"2009" => "Alabama",
"2008" => "Florida",
"2007" => "LSU",
"2006" => "Florida",
"2005" => "Texas"
}
#
# Objective - Get all of the keys and values in a Hash
# Get all the keys from the national_champs Hash from the last question.
# Get all the values from the national_champs Hash from the last question.

national_champs.keys
national_champs.values

country_capitals = { Denmark: "Copenhagen", Sweden: "Stockholm", Germany: "Berlin", France: "Paris", Spain: "Madrid"}
sweden_capital = country_capitals[:Sweden]

# Objective - Check if a key exists in a Hash
country_capitals = { Denmark: "Copenhagen", Sweden: "Stockholm", Germany: "Berlin", France: "Paris", Spain: "Madrid"}
# # Check if country_capitals contains a key "Italy".
country_capitals.keys.include?("Italy")
# # Check if country_capitals contains a key "France".
country_capitals.keys.include?("France")
# # Check if country_capitals contains a key :France.
country_capitals.key?(:France)
# # Check if country_capitals contains a key :france.
country_capitals.key?(:france)
# What new Hash method did you discover?

# Objective - Set the default value of a Hash
authors = Hash.new("unknown")
authors = {"Little Women" => "Louisa May Alcott", "Robinson Crusoe" => "Daniel Defoe"}
# Set the default value of authors to "unknown".
# What happens when you try authors["To Kill a Mockingbird"]?
# What did you learn from this? Try setting other default values.
authors["To Kill a Mockingbird"]

# Objective - Set a new value for an existing key
bestsellers = {"Come Rain or Come Shine" => "unknown", "Make Me" => "unknown", "The Girl in the Spider's Web" => "unknown", "Go Set a Watchman" => "unknown", "All the Light We Cannot See" => "unknown"}
# The top 5 hardcover New York Times bestsellers are listed with "unknown" authors. Set the correct author values from the list below.
#
bestsellers["Come Rain or Come Shine"] = "Jan Karon"
bestsellers["Make Me"] =  "Lee Child"
bestsellers["The Girl in the Spider's Web"] = "David Lagercrantz"
bestsellers["Go Set a Watchman"] = "Harper Lee"
bestsellers["All the Light We Cannot See"] = "Anthony Doerr"

bestsellers
#
# Objective - Check if a Hash contains a value
authors = {"Little Women" => "Louisa May Alcott", "Robinson Crusoe" => "Daniel Defoe"}
# Check if authors contains the value "Louisa May Alcott".
authors.value?("Louisa May Alcott")

# Objective - Learn how the Hash#include? method works
remodel = {floor: "tile", cabinets: "oak", countertop: "corian", faucet: "stainless steel", refrigerator: "LG"}
# Does remodel include "oak". Check if remodel includes "oak" using the .include? method.
# Check if remodel includes :cabinets.
# What can you infer about the include? method from this?

remodel.include?("oak")
remodel.include?(:cabinets)
