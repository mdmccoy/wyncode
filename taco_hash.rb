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
        }
      ]
    },
    {
      name: "Sides / Antojitos"
      }]
    }

    puts menu[:sections][0][:name] # should output "Tacos"
    puts menu[:sections][1][:name]
    puts menu[:sections][0][:items][0][:name]
