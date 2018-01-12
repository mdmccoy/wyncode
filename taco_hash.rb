# puts menu[:sections][0][:name] # should output "Tacos"
#
# puts menu[:sections][1][:name] # should output "Sides / Antojitos"
#
# puts menu[:sections][0][:items][0][:name] # should output "Al Pastor"
#
# puts menu[:sections][0][:items][0][:description] # should output "pork, achiote, pineapple"
#
# puts menu[:sections][0][:items][0][:price] # should output 3.50

menu = {
  sections: [
    {
      name: "Tacos",
      description: "FRESHLY MADE BLUE CORN TORTILLAS",
      items: [
        {
          name: "Al Pastor",
          description: "pork, achiote, pineapple",
          price: 3.50
        },
        {
          name:"CARNITAS",
          description: "pork, orange, cinnamon",
          price:3.50
        },
        {
          name:"CHORIZO",
          description: "pork, paprika, cumin, garlic",
          price:  3.50
        },
        {
          name:"ASADA",
          description: "steak, citrus, chile de arbol",
          price:5.00
        },
        {
          name:"BARBACOA",
          description:"beef, cumin, pasilla negra",
          price:3.50
        },
        {
          name:"LENGUA",
          description:"beef tongue, cerveza victoria",
          price:3.50
        },
        {
          name:"POLLO",
          description:"chicken, scallion, cilantro",
          price:3.50
        },
        {
          name:"CAMARON",
          description:"shrimp, red ‘mole’, slaw",
          price:5.00
        },
        {
          name:"HUITLACOCHE",
          description:"corn ‘truffle’, corn, scallion",
          price:3.50
        },
        {
          name:"RAJAS",
          description:  "poblano, onion, crema, cotija",
          price:3.50
        },
        {
          name:"CHAPULINES",
          description: "grasshoppers, avocado, tajin",
          price:3.50
        }
      ]
    },
    {
      name: "Sides / Antojitos",
      description: "",
      items: [
        {
          name:"TOTOPOS",
          description: "hand torn blue masa chips",
          options: [
            {
              name:"guac",
              price: 2.00
            },
            {
              name:"frijoles",
              price:+2.00
            },
            {
              name:"salsa",
              price:1.50
            }
          ],
          price: 5.00
        },
        {
          name:"ELOTE",
          description:"charred corn, cilantro, jalapeno crema, cotija",
          price: 5.00
        },
        {
          name:"QUINOA",
          description: "jicama, corn, scallion, chile, nopal dressing",
          price:6.50
        }
      ]
    },
    {
      name: "Beer / Cerveza"
      }]
    }

    puts menu[:sections][0][:name] # should output "Tacos"
    puts menu[:sections][1][:name]
    puts menu[:sections][0][:items][0][:name]
    puts  menu[:sections][0][:items][0][:description] # should output "pork, achiote, pineapple"
    #
    puts menu[:sections][0][:items][0][:price] # should output 3.50
