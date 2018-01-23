names = ['billy', 'angel', 'janine']
names2 = ['other names', 'no match']
names3 = ['more names', 'Harold']

def check_name(name,array)
  array.select {|person| person if person==name}
end

p check_name('angel',names)
p check_name('Lacey',names2)
p check_name('Harold',names3)
