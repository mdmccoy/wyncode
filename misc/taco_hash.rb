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
          price:"3.50"
        },
        {
          name:"CARNITAS",
          description: "pork, orange, cinnamon",
          price:"3.50"
        },
        {
          name:"CHORIZO",
          description: "pork, paprika, cumin, garlic",
          price:"3.50"
        },
        {
          name:"ASADA",
          description: "steak, citrus, chile de arbol",
          price:"5.00"
        },
        {
          name:"BARBACOA",
          description:"beef, cumin, pasilla negra",
          price:"3.50"
        },
        {
          name:"LENGUA",
          description:"beef tongue, cerveza victoria",
          price:"3.50"
        },
        {
          name:"POLLO",
          description:"chicken, scallion, cilantro",
          price:"3.50"
        },
        {
          name:"CAMARON",
          description:"shrimp, red ‘mole’, slaw",
          price:"5.00"
        },
        {
          name:"HUITLACOCHE",
          description:"corn ‘truffle’, corn, scallion",
          price:"3.50"
        },
        {
          name:"RAJAS",
          description:  "poblano, onion, crema, cotija",
          price:"3.50"
        },
        {
          name:"CHAPULINES",
          description: "grasshoppers, avocado, tajin",
          price:"3.50"
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
              price: "2.00"
            },
            {
              name:"frijoles",
              price:"2.00"
            },
            {
              name:"salsa",
              price:"1.50"
            }
          ],
          price: "5.00"
        },
        {
          name:"ELOTE",
          description:"charred corn, cilantro, jalapeno crema, cotija",
          price: "5.00"
        },
        {
          name:"QUINOA",
          description: "jicama, corn, scallion, chile, nopal dressing",
          price:"6.50"
        }
      ]
    },
    {
      name: "Beer / Cerveza",
      items: [
        {
          name:"CORONA EXTRA",
          price:"7.00"
        },
        {
          name:"CORONA LIGHT",
          price:"6.00"
        },
        {
          name:"NEGRA MODELO",
          price:"6.00"
        },
        {
          name:"PACIFICO",
          price:"6.00"
        },
        {
          name:"TECATE",
          price:"5.00"
        },
        {
          name:"VICTORIA",
          price:"6.00"
        },
        {
          name:"ROTATING CRAFT SELECTION",
          price:"8.00"
        }
      ]
    },
    {
      name:"BREAKFAST",
      description: "EVERYDAY 8 AM – 11:30 AM",
      items: [
        {
          name:"HUEVOS A LA MEXICANA",
          description: "scrambled eggs, pico, frijoles, crema, tortillas",
          price:"5"
        },
        {
          name:"QUESADILLAS DE EPAZOTE",
          description: "queso chihuahua, cotija, epazote, pico, frijoles",
          price:"5"
        },
        {
          name:"TOSTADA DE AGUACATE",
          description:"avocado, egg, frijoles, cabbage, cotija",
          price:"6"
        },
        {
          name:"CHILAQUILES",
          description:"crispy masa, pollo, salsa roja, eggs, crema",
          price:"6"
        },
        {
          name:"TORTILLA DE AGUACATE",
          description:"avocado, queso chihuahua, cotija, frijoles",
          price:"6"
        }
      ]
    },
    {
      name:"COFFEE & TEA",
      items:
      [
        {
          name:"ESPRESSO",
          description:"shot | cortado | latte ",
          price:["3","4","5"]
        },
        {
          name:"LA ENDULZADA",
          description:"espresso, condensed milk, ice, shaken",
          price:"5"
        },
        {
          name:"GREEN TEA",
          description:"Jasmine Cloud by JoJo Tea",
          price:"3"
        },
        {
          name:"ORANGE JUICE",
          description:"Fresh Squeezed Florida OJ",
          price:"5"
        }
      ]
    }
  ]
}

puts menu[:sections][0][:name] # should output "Tacos"
puts menu[:sections][1][:name]
puts menu[:sections][0][:items][0][:name]
puts  menu[:sections][0][:items][0][:description] # should output "pork, achiote, pineapple"
#
puts menu[:sections][0][:items][0][:price] # should output 3.50
