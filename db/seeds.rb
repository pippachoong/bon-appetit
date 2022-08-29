####### Users Seed --------------------------

print  "creating users..."

#make sure that's noting in the table so there's no doubling up
User.destroy_all

u1 = User.create!( 
    email:'jamie@gmail.com', 
    name: 'Jamie', 
    password: 'chicken',
    image:'https://thehappyfoodie.co.uk/wp-content/uploads/2021/05/jamie-oliver-headshot-close.jpg'
)
u2 = User.create!( 
    email:'nigella@gmail.com', 
    name: 'Nigella',
    password: 'chicken',
    image:'https://pbs.twimg.com/profile_images/1493693969825423365/pqVtK9q0_400x400.jpg'
)
u3 = User.create!( 
    email:'saltbae@gmail.com', 
    name: 'SaltBae',
    password: 'chicken',
    image:'https://marketresearchtelecast.com/wp-content/uploads/2021/11/JBSWJCCM2NF4LN7FZVCEK3HJV4.jpg'
)
u4 = User.create!( 
    email:'gordon@gmail.com', 
    name: 'Gordon',
    password: 'chicken',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2021/08/Gordon-Ramsay-H-2021x.jpg'
)

puts "created #{User.count} users."


######## Dishes Seed -------------------

print "creating dishes"

Dish.destroy_all

d1 = Dish.create!(
    name:'Sweet Chicken Surprise',image:'https://img.jamieoliver.com/jamieoliver/recipe-database/64975478.jpg?tr=w-800,h-1066', 
    servings:2, 
    cooking_time:'40 mins', 
    ingredients:'2 x 200 g free-range chicken legs
1 bulb of garlic
250 g mixed-colour seedless grapes
100 ml red vermouth
4 sprigs of fresh tarragon', 
    methods:'
Preheat the oven to 180ºC/350ºF/gas 4.
Put a non-stick ovenproof frying pan on a high heat. Rub the chicken all over with ½ a tablespoon of olive oil, season with sea salt and black pepper and place skin side down in the pan.
Fry for a couple of minutes until golden, then lightly squash the unpeeled garlic cloves with the heel of your hand and add to the pan. Pick in the grapes.
Turn the chicken skin side up, pour in the vermouth and transfer to the oven to roast for 40 minutes, or until the chicken is golden and tender, and the sauce is sticky and reduced.
Add a splash of water to the pan and give it a gentle shimmy to pick up all the sticky bits. Pick over the tarragon, and dish up.')

d2 = Dish.create!(
    name:'Chicken & Mushroom Puff Pie', 
    image:'https://img.jamieoliver.com/jamieoliver/recipe-database/136440026.jpg?tr=w-800,h-1066', 
    servings: 4, 
    cooking_time:'50 mins', 
    ingredients:'500 g free-range skinless boneless chicken thighs
olive oil
1 bunch of spring onions
320 g mixed mushrooms
320 g sheet of ready-rolled puff pastry
600 ml semi-skimmed milk
1 heaped tablespoon plain flour
1 tablespoon wholegrain mustard
80g mixed bag of watercress, spinach & rocket', 
    methods:'
Preheat the oven to 200°C/400°F/gas 6. Chop the chicken into 3cm chunks and place in a 30cm non-stick frying pan on a medium-high heat with 1 tablespoon of olive oil, stirring regularly. Trim the spring onions, chop into 1cm lengths and add to the pan. Trim and tear in the mushrooms. Cook for 10 minutes, or until golden, stirring regularly.

Meanwhile, unroll the pastry sheet on its paper and score a 3cm border around the edge (do not cut all the way through), then very lightly score a large criss-cross pattern across the inner section. Brush with a little milk, then place the pastry, still on its paper, directly on the middle shelf of the oven to cook for 17 minutes, or until golden, risen and cooked through. Stir the flour into the pan for 1 minute, then gradually stir in the milk. Simmer on a medium heat until the pastry is done, stirring occasionally, and loosening with extra splashes of milk, if needed. Turn the heat off, stir through the mustard and half of the leaves, then season to perfection. Remove the pastry from the oven, leave to cool slightly, then transfer to a serving board, discarding the paper. Use a sharp knife to cut round the border, cutting through the top few layers of pastry only. Use a fish slice to carefully lift up and remove the inner section (like a lid), leaving a layer of pastry at the bottom. Pile in the remaining leaves and filling, then put the lid back on, slice and serve.')

d3 = Dish.create!(
     name:'Sweet & Sour Chicken Noodles', 
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/89081008.jpg?tr=w-800,h-1066', 
     servings: 2, 
     cooking_time:'20 mins', 
    ingredients:'2 x 200 g free-range chicken thighs , skin on, bone in
150 g fine rice noodles
200 g sugar snap peas
2 tablespoons Worcestershire sauce
2 teaspoons chilli jam', 
    methods:'
Pull the skin off the chicken. Place the skin in a large non-stick frying pan on a medium heat to render and get golden, turning occasionally.
Cut the bones out of the thighs and chuck into the pan for bonus flavour, then chop the meat into 2cm pieces.
Move the skin and bones to one side of the pan, then add the meat alongside and cook for 5 minutes, or until golden, stirring occasionally.
Once crispy, remove, chop and reserve the skin, discarding the bones.
Meanwhile, cook the noodles in boiling salted water according to the packet instructions. Halve the sugar snaps lengthways.
Once soft, drain the noodles, reserving a mugful of cooking water, then refresh under cold water.
Use scissors to snip the noodles into roughly 8cm lengths.
Stir the Worcestershire sauce and chilli jam into the chicken pan and let the jam melt, then add the sugar snaps and noodles.
Toss over the heat for 2 minutes, adding a splash of reserved noodle water to loosen, if needed.
Taste and season to perfection with sea salt and black pepper, then dish up and sprinkle over the reserved crispy chicken skin.')

d4 = Dish.create!(
     name:'Incredibly Delicious Chicken Salad', 
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/134796991.jpg?tr=w-800,h-1066', 
     servings: 4, 
     cooking_time:'15 mins', 
    ingredients:'
1 head of broccoli
4 x 120 g skinless free-range chicken breasts
1 heaped teaspoon ground coriander
olive oil
1 mug of bulgar wheat , (300g)
2 preserved lemons
1 bunch of radishes
2 spring onions
½ a bunch of fresh mint , (15g)
2 tablespoons extra virgin olive oil
3 tablespoons red wine vinegar
2 tablespoons sunflower seeds
1 punnet of cress
TO SERVE
4 tablespoons fat-free natural yoghurt
2 teaspoons harissa
1 lemon', 
    methods:'
Get your ingredients out, then boil the kettle and place a medium lidded pan on a high heat, a frying pan on a high heat and a griddle pan on a high heat.
Fill the medium pan with boiling salted water.
Trim the end off the stalk from 1 head of broccoli, then cut up the head (like you see in the picture) and add to the pan, cover and boil for 4 minutes.
On a large sheet of greaseproof paper, toss 4 chicken breasts with salt, pepper and 1 heaped teaspoon of ground coriander, then fold the paper over and bash and flatten to 1.5cm thick with a rolling pin.
Put into the frying pan with 2 tablespoons of olive oil, turning after 3 or 4 minutes, until golden and cooked through.
With tongs, remove and drain the broccoli (leaving the pan of water on the heat), then place on the griddle until nicely charred.
Add 1 mug of bulgur wheat (300g) and 2 preserved lemons to the broccoli water and cover, stirring occasionally.
Halve or crush 1 bunch of radishes, trim and finely slice 2 spring onions and the top leafy half of ½ a bunch of fresh mint, then toss it all in a bowl with 2 tablespoons of extra virgin olive oil and 3 tablespoons of red wine vinegar, and season to taste.
Drain the bulgur wheat and tip into a large serving bowl, then mash and mix in the preserved lemons and arrange the broccoli on top.
Toss 2 tablespoons of sunflower seeds in the chicken pan, then slice the chicken and add to the salad, scattering over the seeds and snipping over 1 punnet of cress.
Dollop over 4 tablespoons of natural yoghurt and drizzle with 2 teaspoons of harissa, then serve with lemon wedges on the side.')


d5 = Dish.create!(
     name:'Spiced Beef & Rice Hot Pot', 
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/46257452.jpg?tr=w-800,h-1066', 
     servings: 4, 
     cooking_time:'2 hours', 
    ingredients:'
400 g stewing beef
4 cloves of garlic
4 cm piece of ginger
2 large onions
2 carrots
olive oil
2 tablespoons curry paste of your choice
250 g basmati rice
375 ml organic stock
12 curry leaves
natural yoghurt , optional
1 fresh red chilli , optional', 
    methods:'
Get your ingredients out, then boil the kettle and place a medium lidded pan on a high heat, a frying pan on a high heat and a griddle pan on a high heat.
Fill the medium pan with boiling salted water.
Trim the end off the stalk from 1 head of broccoli, then cut up the head (like you see in the picture) and add to the pan, cover and boil for 4 minutes.
On a large sheet of greaseproof paper, toss 4 chicken breasts with salt, pepper and 1 heaped teaspoon of ground coriander, then fold the paper over and bash and flatten to 1.5cm thick with a rolling pin.
Put into the frying pan with 2 tablespoons of olive oil, turning after 3 or 4 minutes, until golden and cooked through.
With tongs, remove and drain the broccoli (leaving the pan of water on the heat), then place on the griddle until nicely charred.
Add 1 mug of bulgur wheat (300g) and 2 preserved lemons to the broccoli water and cover, stirring occasionally.
Halve or crush 1 bunch of radishes, trim and finely slice 2 spring onions and the top leafy half of ½ a bunch of fresh mint, then toss it all in a bowl with 2 tablespoons of extra virgin olive oil and 3 tablespoons of red wine vinegar, and season to taste.
Drain the bulgur wheat and tip into a large serving bowl, then mash and mix in the preserved lemons and arrange the broccoli on top.
Toss 2 tablespoons of sunflower seeds in the chicken pan, then slice the chicken and add to the salad, scattering over the seeds and snipping over 1 punnet of cress.
Dollop over 4 tablespoons of natural yoghurt and drizzle with 2 teaspoons of harissa, then serve with lemon wedges on the side.')

puts "Done! Create #{Dish.count} dishes:"
puts Dish.pluck(:name).join(',')

#######----------------------------
# Create one to many associations
u1.dishes << d1
u2.dishes << d2
u4.dishes << d3
u4.dishes << d4
u3.dishes << d5

puts "Testing user -< dishes associations:"
puts " • the dishes '#{Dish.first.name}' is by #{Dish.first.user.name}"
puts " • the user #{User.last.name} has the dishes: #{User.last.dishes.pluck(:name).join(', ')}"

#---------------------------
print "creating comment "

Comment.destroy_all

c1 = Comment.create! review:"This is an awesome dish!" 
c2 = Comment.create! review:"Delicious!" 
c3 = Comment.create! review:"Tasty!!" 
c4 = Comment.create! review:"Divine!" 
c5 = Comment.create! review:"Sweet!" 
c6 = Comment.create! review:"Reminds me of grandma's dish" 

puts "created  #{Comment.count} comments"

#create Association from dish to comments ---------------

d1.comments << c1 << c3
d2.comments << c3
d3.comments << c2 << c6
d4.comments << c4 << c5

puts "Dish '#{d4.name}' has the following reviews #{d4.comments.pluck(:review).join(', ')}"

#-------------------------------------

print "creating category"

Category.destroy_all

cat1 = Category.create! name: 'Chicken'
cat2 = Category.create! name: 'Beef'
cat3 = Category.create! name: 'Fish'
cat4 = Category.create! name: 'Vegetables'
cat5 = Category.create! name: 'Eggs'

puts "created #{Category.count} categories"

##----------------------------------------

#Create Assocations between categories and dish

d1.categories << cat1
d2.categories << cat1
d3.categories << cat1
d4.categories << cat1
d5.categories << cat2 << cat5

puts "Category '#{cat1.name}' has dishes #{cat1.dishes.pluck(:name).join(', ')}" 
puts "Dish '#{d5.name}' is under following category of #{d5.categories.pluck(:name).join(', ')} "


#---------------------------