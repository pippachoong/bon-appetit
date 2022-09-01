####### Users Seed --------------------------

puts  "creating users..."

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

puts "creating dishes"

Dish.destroy_all

d1 = Dish.create!(
    name:'Sweet Chicken Surprise',image:'https://img.jamieoliver.com/jamieoliver/recipe-database/64975478.jpg?tr=w-800,h-1066', 
    remark: "This is an all time favourite dish from family and friends! Hope it's the same for you too!",
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
    remark: "My kids loved this dish. Very easy to make!",
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
     remark: "Quick and easy dish! Can't go wrong!",
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
     name:'Chicken Salad', 
     remark: "Somthing healthy and delicious. My all time favourite dish.",
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
     name:'Chicken & hot sauce gravy', 
     remark: "If you’re a fan of hot sauce, you’ll love this mighty chicken recipe",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/91844239.jpg?tr=w-800,h-1066', 
     servings: 6, 
     cooking_time:'2 hours 15 mins', 
    ingredients:'
4 free-range chicken thighs , skin on, bone in
4 free-range chicken legs , skin on, bone in
4 free-range chicken wings , skin on, bone in
200 ml chilli sauce , plus extra to taste
1 bulb of garlic
1 mixed bunch of fresh woody herbs , such as rosemary, thyme, sage, bay, oregano (30g)
30 g unsalted peanuts
½ a bunch of fresh chives , (15g)', 
    methods:'
Place the chicken pieces in a large roasting tray and pour over the hot sauce. Halve and throw in the garlic bulb, then roughly tear in the herbs and add a good pinch of sea salt and black pepper.
Toss well, making sure the sauce gets into all the nooks and crannies of the chicken. Cover tightly with a double layer of tin foil and pop in the fridge for at least 1 hour, or overnight – the longer the better!
Preheat the oven to 190°C/375°F/gas 5. Bake the chicken, covered, for 1 hour, then remove the foil and carefully drain any juices into a jug – this will be your gravy. Skim off any fat that has risen to the surface and spoon it back over the chicken. Return to the oven, uncovered, for a further hour, or until golden and gnarly, turning and basting with the reserved juices halfway through.
To make the slaw, peel the onion and coarsely grate, along with the apple, carrot and cabbages onto a serving plate. Pick and finely chop the herbs, then scatter over the veg and season with a with a pinch of salt and pepper. Toss with 2 tablespoons each of cider vinegar and extra virgin olive oil.
Place a large non-stick frying pan on a medium heat and toast the peanuts until golden, tossing regularly. Tip into a pestle and mortar and pound until fine. Finely chop the chives.
Remove the chicken to a serving platter to rest. Place the roasting tray on the hob over a medium heat. Add a good splash of cider vinegar and let it cook away for a couple of minutes, scraping up any sticky bits from the base and sides of the tray.
Pour in the reserved chicken juices with 100ml of boiling water, bring to the boil, then reduce the heat and simmer for 3 minutes, or until thickened and reduced. Add an extra dollop of hot sauce to taste, then strain the gravy through a sieve into a warm jug.
Scatter the crushed peanuts and chopped chives over the chicken and serve with the hot sauce gravy and rainbow slaw. Delicious served with baked sweet potatoes.
')

d6 = Dish.create!(
     name:'Spiced Beef & Rice Hot Pot', 
     remark: "This is a dish to impress guest. Try it out!",
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

d7 = Dish.create!(
     name:'Harissa meatball wraps', 
     remark: "It's always handy to have a stash of tasty meal elements ready and waiting in the freezer for those extra-busy days.",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/134622444.jpg?tr=w-800,h-1066', 
     servings: 5, 
     cooking_time:'30 mins', 
    ingredients:'
500 g minced beef
1 x 250 g sachet of cooked grains or lentils
1 lemon
1 bunch of fresh flat-leaf parsley , (30g)
3 teaspoons harissa
350 g red cabbage
1 small red onion
1 red apple
4 tablespoons natural yoghurt
olive oil
4 wholemeal tortilla
pickled chillies , optional', 
    methods:'
Place 500g minced beef and 1 x 250g sachet of cooked grains or lentils into a food processor, finely grate in the zest of 1 lemon, and tear in ½ a bunch of fresh flat-leaf parsley (15g).
Add 2 teaspoons of harissa and a good pinch of sea salt and black pepper, then blitz to combine.
On a large sheet of greaseproof paper, split the mixture into 24 pieces and, with wet hands, roll into balls.
Trim and finely slice 350g of red cabbage and peel and finely slice 1 small red onion, then place in a bowl with the juice of ½ a lemon and a pinch of salt and pepper. Scrunch together well.
Slice the apple into matchsticks and pick the leaves from ½ a bunch of fresh flat-leaf parsley (15g), then add to the bowl and toss together.
Place 16 meatballs (freeze the rest for another day) into a large non-stick frying pan on a medium heat with 1 tablespoon of olive oil and fry for 7 minutes, or until golden and cooked through, turning occasionally.
Meanwhile, ripple 1 teaspoon of harissa through 4 tablespoons of natural yoghurt.
Warm 4 tortilla through, then serve alongside the pan of meatballs (4 per per portion), slaw, harissa yoghurt and pickled chillies (if using), then let everyone build and roll up their own.')

d8 = Dish.create!(
     name:'Beef cheek ragù', 
     remark: "Inspired by Nonna Miriam and her obsession for slow-cooking and making tough, cheaper cuts of meat the hero, this is amazing served with mashed potato, crusty bread or oozy polenta, or even tossed with freshly cooked pasta. ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/77639009.jpg?tr=w-800,h-1066', 
     servings: 10, 
     cooking_time:'5 hours', 
    ingredients:'
20 g dried porcini mushrooms
5 beef cheeks , trimmed
olive oil
150 g piece of higher-welfare smoked pancetta
½ a celery heart
2 red onions
2 carrots
5 cloves
8 cloves of garlic
½ a cinnamon stick
1 bunch of mixed fresh herbs (30g) , such as sage, bay, rosemary, thyme, basil, parsley
500 ml Barolo red wine
1 x 680 g jar of passata', 
    methods:'
Preheat the oven to 160ºC/325ºF/gas 3. Cover the porcini with boiling kettle water and leave to rehydrate. Season the beef cheeks with sea salt and black pepper, then brown them in a large casserole pan on a high heat with a splash of oil, turning until well coloured all over. Meanwhile, slice the pancetta into lardons. Peel the celery, onions and carrots, then chop into rough 1cm dice. In a pestle and mortar, crush the cloves with 1 teaspoon each of salt and pepper, then peel and pound in the fresh garlic.

When brown, push the cheeks to one side of the pan and reduce to a medium heat. Add the pancetta and cinnamon, stirring until the pancetta is lightly golden. Drain the porcini, reserving the liquor, then roughly chop and add to the pan with the veg. Tie the herbs together, then stir in with the garlic mixture. Fry for 15 minutes, or until soft, stirring occasionally.

Pour in the wine, let it reduce by half, then pour in the reserved porcini water (discarding just the last gritty bit) and the passata. Fill the passata bottle with water and pour into the pan. Cover with a scrunched-up sheet of wet greaseproof paper and a lid. Cook in the oven for 4 hours, or until the meat is outrageously tender and the sauce has thickened. Taste the sauce and season, if needed, then serve up however you wish.')

d9 = Dish.create!(
     name:'Jewish artichokes', 
     remark: "Who doesnt like artichoke? ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/77878565.jpg?tr=w-800,h-1066', 
     servings: 6, 
     cooking_time:'2 hours', 
    ingredients:'
2 x 400 g tins of quality plum tomatoes
1 onion
1 clove of garlic
1 stick of celery
½ a bunch of fresh basil , (15g)
½ a bunch of fresh flat-leaf parsley , (15g)
6 Italian violet artichokes
2 lemons , for artichoke prep
200 g plain flour
4 large free-range eggs
400 g lean minced beef
1 pinch of dried red chilli flakes
vegetable oil , for frying', 
    methods:'
Put a casserole pan that will snugly fit the artichokes later on a medium- high heat. Scrunch in the tomatoes through your clean hands, then pour in 2 tins’ worth of water. Peel and finely chop the onion, garlic and celery. Finely chop half the basil leaves and half the parsley (stalks and all). Stir it all into the pan, simmer for 30 minutes to thicken and reduce the sauce, then taste and season to perfection.

Meanwhile, prep the artichokes (see tip), then quarter each one lengthways, dropping the pieces back into the lemon water. Put the flour into a shallow bowl, and beat 2 eggs in another shallow bowl. Place the mince in a bowl with the chilli flakes and a good pinch of sea salt, and crack in the remaining 2 eggs. Finely chop the remaining basil leaves and parsley, add to the bowl, then scrunch and mix together, and divide into eight. Take one piece, then press and hug 3 artichoke quarters together around it, packing and squeezing it back into its original shape. Roll it in the flour, dunk it in the beaten egg, letting any excess drip off, then pop on a tray ready to fry. Repeat until you have 8 re-formed artichokes.

Meanwhile, pour 5cm of vegetable oil into a large, sturdy, deep-sided pan on a high heat. Get it to 160ºC on a thermometer, then gently lower all 8 artichokes into the oil – they’ll pack it out. Fry for 10 minutes, or until golden, then use a slotted spoon to lift them into the sauce. Reduce to a medium-low heat, simmer for 10 minutes, turning halfway, then serve.')

d10 = Dish.create!(
     name:'Oxtail stew', 
     remark: "A winter classic and oxtail is one of those forgotten ingredients coming back into vogue. The addition of orange, dates and spices lends sweetness and fragrance. It makes great leftovers, ideally tossed through pasta. ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/46261047.jpg?tr=w-800,h-1066', 
     servings: 8, 
     cooking_time:'4 hours', 
    ingredients:'
50 g plain flour
2.5 kg quality trimmed oxtail, cut into rounds (ask your butcher to do this)
500 g shallots
3 cloves of garlic
5-6 5cm pieces of ginger
olive oil
1 teaspoon ground cloves
1 whole nutmeg , for grating
1 large orange or 2-3 strips of dried orange peel
1 punnet of dates (soft, such as medjool, or semi-dried work best)
balsamic or sherry vinegar', 
    methods:'
Preheat the oven to 200ºC/gas 6.
Season the flour with sea salt and black pepper, then use it to dredge the oxtail till well coated. Shake off the excess flour and set the meat aside.
Peel and finely dice the shallots. Peel and finely slice the garlic, then peel and grate the ginger.
Heat 2 tablespoons of oil in a large shallow frying pan over a medium-low heat and gently cook the shallots and garlic until fragrant but not coloured. Transfer to a large ovenproof dish and set aside.
Heat 2 to 3 tablespoons more oil to the same pan on a medium-high heat and brown the oxtail all over, in batches if necessary.
Pack the oxtail over the shallots and garlic, then add the cloves, fresh ginger and a good grating of nutmeg. Add the peel from the fresh orange or use dried orange peel, then cover with 2cm to 3cm of water.
Place in the oven for 15 minutes, then reduce the temperature to 140ºC/gas 1. Gently simmer for around 2 hours 30 minutes (depending on how big the bones are), or until the meat is just tender. Check the liquid level from time to time, adding more water if necessary.
Taste and season, then destone and add the dates and the vinegar. Continue to cook for another 30 minutes, or until the dates are plump and the meat is tender but not yet falling off the bones.
Blanch the kale in boiling salted water for 3 to 4 minutes, then drain well.
Dice the bacon, then peel and finely slice the garlic. Fry together till cooked, then turn off the heat. Finely chop and stir in the chilli along with the kale.
Remove the oxtail from the oven and skim any excess fat from the surface. Serve the oxtail pieces with a few dates, some of the juices and the braised kale.')

d11 = Dish.create!(
     name:'Rogan josh Scotch eggs', 
     remark: "Simple West meets East dish! ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/100021006.jpg?tr=w-800,h-1066', 
     servings: 6, 
     cooking_time:'1 hour', 
    ingredients:'
5 large free-range eggs
2 x 250 g packets of mixed cooked grains, ideally with punchy flavour
2 heaped teaspoons rogan josh curry paste
1 bunch of fresh mint (30g)
50 g plain flour
1 naan bread
2 litres vegetable oil, for frying
mango chutney', 
    methods:'
Soft-boil 4 eggs in a pan of boiling salted water on a medium high heat for 5 minutes exactly, then drain, cool under cold running water, and peel.
Tip the grains into a food processor with the curry paste, pick in the mint leaves, then whiz until fairly fine and tacky in texture, adding a splash of water, if needed.
Divide into 4 balls. One at a time, pat out on a 15cm square of greaseproof paper, to just under 1cm thick. Place the paper flat on your hand, put a peeled egg in the centre and mould the mixture up and around the egg to seal it inside, using the paper to help you. As it comes together into a ball, remove it from the paper and press gently in your hands to create the perfect covering – patch up any holes as you go.
Place the flour in one bowl, beat the remaining egg in another, then whiz the naan to fine crumbs and tip into a third bowl. Cover the coated eggs with flour, dip into the beaten egg and roll in the crumbs until well covered, then chill.
When you’re ready to cook, just under half-fill a large sturdy pan with oil – the oil should be 8cm deep, but never fill your pan more than half full – and place on a medium-high heat. Use a thermometer to tell when it’s ready (170°C), or add a piece of potato and wait until it turns golden – that’s the sign that it’s ready to go.
Carefully lower the Scotch eggs into the pan using a slotted spoon and cook for 8 minutes, or until golden. Scoop out and drain on kitchen paper.
Cut in half and serve seasoned lightly with sea salt and with mango chutney for dunking. Fantastic with salad for dinner, or serve up half as a starter or lighter bite.')

d12 = Dish.create!(
     name:'Brussels sprouts', 
     remark: "Celebrate the humble sprout with this insanely delicious recipe. Crisp cubes of apple provide beautiful sweetness, while sausage – and Worcestershire sauce (my secret ingredient) – gives a contrasting savoury kick.",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/99602345.jpg?tr=w-800,h-1066', 
     servings: 6, 
     cooking_time:'30 mins', 
    ingredients:'
800 g Brussels sprouts
2 higher-welfare Cumberland sausages
½ a bunch of fresh sage , (15g)
20 g unsalted butter
1 onion
1 sweet eating apple
1 tablespoon Worcestershire sauce', 
    methods:'
1. Trim the Brussels and peel away any tatty outer leaves, halving any larger ones and keeping the smaller ones whole. Cook in a large pan of boiling salted water for 5 minutes, then drain and leave to steam dry.
2. Melt the butter in a large frying pan on a medium-low heat. Pick and add half the sage leaves, cook for 3 minutes, or until crispy, then tip into a small bowl.
3. Place the pan back on the heat and squeeze the sausage meat from the skins directly into the pan, breaking it up with the back of a spoon. Cook for 3 to 5 minutes, until golden and crispy, while you peel and finely slice the onion, and pick and finely chop the remaining sage.
4. Add the onion and chopped sage to the pan and cook for 5 minutes on a medium-high heat, or until the onions have softened, stirring occasionally.
5. Peel and core the apple, then finely dice. Tip into the pan, and add the sprouts too, then add the Worcestershire sauce and toss until hot through.
6. Transfer to a serving platter, scatter over the crispy sage leaves, and dig in!')

d13 = Dish.create!(
     name:'Silky squash risotto', 
     remark: "Perfect for a chilly day and it's easy to make.",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/121936025.jpg?tr=w-800,h-1066', 
     servings: 4, 
     cooking_time:'1 hour 20 mins', 
    ingredients:'
1 butternut or acorn squash , (1.2kg)
1 bunch of fresh marjoram , (20g)
olive oil
1.2 litres quality vegetable or chicken stock
1 onion
1 stick of celery
300 g Arborio risotto rice
150 ml dry white wine
200 g Tenderstem broccoli
½ a lemon
extra virgin olive oil
50 g Parmesan cheese
1 knob of unsalted butter', 
    methods:'
Preheat the oven to 180°C/350°F/gas 4. Scrub the squash (there’s no need to peel it), carefully halve it lengthways and deseed, then chop into 2cm chunks.
Place the squash in a roasting tray, pick and chop most of the marjoram leaves, then toss with 1 tablespoon of olive oil and a pinch of sea salt and black pepper. Roast for 1 hour, or until soft and caramelised.
With 20 minutes to go on the squash, simmer the stock over a low heat. Peel and finely chop the onion and celery, then place in a high-sided pan on a medium heat with ½ a tablespoon of olive oil. Cook for 10 minutes, or until softened but not coloured, stirring regularly, then stir in the rice to toast for 2 minutes.
Pour in the wine and stir until absorbed. Add a ladleful of stock and wait until it’s been fully absorbed before adding another, stirring constantly and adding ladlefuls of stock until the rice is cooked – it will need 16 to 18 minutes.
Remove the squash from the oven and mash up with a fork – I like to do half smashed and leave half chunky, then stir through the risotto about halfway through.
Meanwhile, trim the broccoli, halving any larger stalks lengthways to help it cook evenly. Steam for 2 minutes, or until just cooked but still full of colour, then toss with the lemon juice and a drizzle of extra virgin olive oil, and season to perfection.
When the risotto is done, add enough extra stock or boiling kettle water to make the risotto oozy, then finely grate in the Parmesan, and beat in with the butter.
Cover the pan, turn off the heat and leave to relax for 2 minutes. Stir, season to perfection, then divide between your plates.
Pick over the remaining marjoram and serve topped with the broccoli. ')

d14 = Dish.create!(
     name:'Veggie black bean enchiladas', 
     remark: "Looking for midweek inspiration? Here is this dish.",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/134397244.jpg?tr=w-800,h-1066', 
     servings: 4, 
     cooking_time:'45 mins', 
    ingredients:'
2 red peppers
2 fresh red chillies
8 spring onions
400 g ripe tomatoes
2 cloves of garlic
olive oil
1 bunch of fresh coriander , (30g)
2 limes
2 x 400 g tins of black beans
chipotle chilli sauce
50 g feta cheese
8 corn or flour tortillas
2 large or 4 small corn on the cob
extra virgin olive oil
natural yoghurt or soured cream , to serve', 
    methods:'
Preheat the oven to 180ºC/350ºF/gas 4.
Halve, deseed and remove the stalks from 2 red peppers and 2 fresh red chillies.
Blacken and char 6 spring onions, 400g of tomatoes, the peppers, chillies, and 2 cloves of garlic in a large dry ovenproof non-stick pan (or directly over the flame of a gas hob) on a high heat – you may need to work in batches.
Peel away any really blackened bits of vegetable skin, removing any tough skins or stalks, as necessary, and place in a blender with 1 tablespoon of olive oil and the stalks from 1 bunch of fresh coriander (30g), reserving the leaves.
Add a good splash of water, then finely grate in the zest of 2 limes and squeeze in the juice of 1½, then blitz until smooth. Season to taste.
To make the filling, drain 2 x 400g tins of black beans and place in a bowl, season with sea salt and black pepper, then add a few shakes of chipotle chilli sauce, to taste.
Crumble in 25g of feta cheese and add 1 splash of olive oil, then roughly mash half the beans and stir back through so you get a mixture of textures. Tear in half the reserved coriander leaves and stir through.
Pour half the sauce into your pan and place over a medium-low heat.
Divide the filling between 8 tortillas, then roll up into thin cigars, placing into the pan as you go.
Pour over the remaining sauce and crumble over the remaining 25g of feta, then bake for 25 to 30 minutes, or until golden and bubbling.
To make a quick sweetcorn salsa, char 2 large or 4 small corn on the cob directly over the flame of a gas hob (or in a dry pan) on a medium heat for a few minutes, turning regularly, then slice off the corn kernels and place into a bowl.
Drizzle over 1 tablespoon of extra virgin olive oil and squeeze over the juice from the remaining ½ a lime.
Chop 2 spring onions and most of the remaining coriander leaves, stir through the salsa, then season to taste with salt, pepper and chipotle chilli sauce.
Serve straight from the oven, scattered with the remaining coriander leaves, and with a spoonful of sweetcorn salsa and a dollop of yoghurt or soured cream. Nice served with cold lager or tequila!')

d15 = Dish.create!(
     name:'Asparagus stir-fry', 
     remark: "Super easy and delicious meal.",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/134795904.jpg?tr=w-800,h-1066', 
     servings: 4, 
     cooking_time:'30 mins', 
    ingredients:'
350 g firm tofu
2 teaspoons groundnut oil
2 tablespoons sesame seeds
½ tablespoon cornflour
2 tablespoons soy sauce
1 tablespoon white wine vinegar
1 clove of garlic
1 fresh red chilli , plus extra to serve
5 cm piece of ginger
320 g asparagus
150 g beansprouts
200 g rice noodles , to serve (optional)', 
    methods:'
Place 350g of firm tofu on a plate lined with kitchen paper, then place another layer of kitchen paper on top – this will help soak up some of the moisture. Set aside until ready to use.
Place a large frying pan over a medium heat, carefully cut the tofu into quarters, then cut each piece into four again. Add 1 teaspoon of groundnut oil to the pan, then add the tofu and leave to cook for 10 to 15 minutes, or until golden and crisp, turning halfway. Remove to a bowl.
Toast 2 tablespoons of sesame seeds in the pan, then toss with the tofu to coat.
In a small bowl, mix ½ a tablespoon of cornflour, 2 tablespoons of soy sauce and 1 tablespoon of white wine vinegar until combined.
Peel and finely chop 1 clove of garlic and trim and finely slice 1 fresh red chilli. Peel a 5cm piece of ginger, then slice into matchsticks. Snap the woody ends from 320g asparagus, and slice on the bias.
Place a wok over a high heat and add 1 teaspoon of groundnut oil. Once hot, stir in the garlic, chilli and ginger, followed by the asparagus and 150g of beansprouts. Cook for a couple of minutes, or until everything is fragrant and golden, stirring continuously.
Stir in the cornflour mixture, reduce the heat to medium and cook for 4 to 5 minutes, or until the sauce has thickened, adding a splash of water, if needed.
Serve the veggies alongside the tofu with some extra sliced red chilli and cooked rice noodles, if you like.')

d16 = Dish.create!(
     name:'Fish-pie', 
     remark: "One of my grandma's recipe. It's a total hit in the family",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/89156535.jpg?tr=w-800,h-1066', 
     servings: 6, 
     cooking_time:'1 hour 30 mins', 
    ingredients:'
5 large potatoes
2 large free-range eggs
2 large handfuls of baby spinach
1 onion
1 carrot
olive oil
250 ml double cream
mature Cheddar or Parmesan cheese
1 lemon
1 heaped teaspoon English mustard
1 large handful of fresh flat-leaf parsley
450 g haddock , or cod fillet, skin off, pin-boned, from sustainable sources
1 whole nutmeg , for grating (optional)', 
    methods:'
Preheat the oven to 230°C/450°F/gas 8.
Peel and dice the potatoes into 2.5cm chunks, then put into boiling salted water and bring back to the boil for 2 minutes.
Carefully add the eggs to the pan and cook for a further 8 minutes, or until hard-boiled, by which time the potatoes should also be cooked.
At the same time, steam the spinach in a colander above the pan. This will only take a minute. When the spinach is done, remove from the colander and gently squeeze out any excess moisture.
Drain the potatoes in the colander. Remove the eggs, cool under cold water, then peel and quarter them. Place to one side.
Peel and finely chop the onion, then peel, halve and finely chop the carrot.
In a separate pan, slowly fry the onion and carrot in a little oil for about 5 minutes, then add the double cream and bring just to the boil.
Remove from the heat and finely grate in 2 good handfuls of cheese, then squeeze in the lemon juice and stir through the mustard.
Pick and finely chop the parsley and stir into the cream mixture.
Slice the fish into strips then place in an earthenware dish with the spinach and eggs and mix together, pouring over the creamy vegetable sauce.
The cooked potatoes should be drained and mashed – add a bit of oil, sea salt, black pepper and a touch of nutmeg (if using). Spread on top of the fish. Don’t bother piping it to make it look pretty – it’s a homely hearty thing.
Place in the oven for 25 to 30 minutes, or until the potatoes are golden.
Serve with some nice peas or greens, not forgetting your baked beans and tomato ketchup. Tacky but tasty, and that’s what I like..')

d17 = Dish.create!(
     name:'Quickest white fish tagine', 
     remark: "Easy meal to prepare for the busy week.",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/109469720.jpg?tr=w-800,h-1066', 
     servings: 2, 
     cooking_time:'15 mins', 
    ingredients:'
150 g couscous
4 cloves of garlic
olive oil
250 g ripe mixed-colour cherry tomatoes
250 g asparagus
2 heaped teaspoons rose harissa
2 x 150 g white fish fillets, skin off, pin-boned, from sustainable sources
1 lemon
2 tablespoons natural yoghurt', 
    methods:'
Place the couscous in a bowl, add a pinch of sea salt and black pepper, then just cover with boiling kettle water, and cover. Peel and slice the garlic, then place in a shallow casserole pan on a medium-high heat with 1 tablespoon of olive oil, stirring while you halve the cherry tomatoes, adding them to the pan as you go. Snap the woody ends off the asparagus, roughly chop the spears and stir into the pan, then season with salt and pepper. Rub most of the harissa over the fish, sit it on top of the veg, finely grate over the lemon zest and squeeze over half the juice. Add 150ml of water, cover, and cook for 5 minutes, or until the fish is just cooked through.

Fluff up the couscous. Ripple the remaining harissa through the yoghurt, then spoon it over the fish and couscous. Serve with lemon wedges, for squeezing over.')

d18 = Dish.create!(
     name:'Fish skewers', 
     remark: "Perfect for getting the whole family to enjoy eating fish, this quick and easy dish is fun, fresh and zingy, and can be easily rustled up on a weeknight when you’re short on time. ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/134566857.jpg?tr=w-800,h-1066', 
     servings: 4, 
     cooking_time:'25 mins', 
    ingredients:'
olive oil
1 clove of garlic
2 lemons
2 sprigs of fresh rosemary
1 red pepper
4 x 130 g white fish fillets , skin off, pin-boned, from sustainable sources
2 thick slices of wholemeal bread , (200g)
8 rashers of higher-welfare smoked pancetta or smoked streaky bacon
2 x 250 g sachets of cooked puy lentils
2 x 80 g bags of watercress, spinach & rocket
4 tablespoons natural yoghurt', 
    methods:'
Preheat the oven to 200ºC/400ºF/gas 6, and place 4 wooden skewers into a tray of cold water to soak (or use woody rosemary sprigs – see Flavour boost tip).
Drizzle 2 tablespoons of olive oil into a large roasting tray, peel and finely grate in 1 clove of garlic along with the zest of 1 lemon, then squeeze in the juice from half. Pick, finely chop and add 2 sprigs of fresh rosemary, then season with sea salt and black pepper.
Deseed 1 red pepper, then slice into 3cm chunks along with 4 x 130g of white fish fillets and 2 thick slices of wholemeal bread (200g), then add to the tray and toss to coat.
Remove the skewers from the water, then divide and thread the bread, fish and pepper pieces onto the skewers, leaving little spaces between them so that the heat cooks everything evenly.
Loosely wrap 2 slices of pancetta or smoked streaky bacon around each skewer, then place back in the tray and roast for 10 minutes, or until golden and just cooked through (you can also grill, barbecue or cook on a griddle, turning halfway).
Heat 2 x 250g sachets of cooked grain pouches according to the packet instructions, then tip into a bowl and toss gently with 2 x 80g bags of watercress, spinach & rocket, 1 tablespoon of extra virgin olive oil, the juice of ½ a lemon and a pinch each of sea salt and black pepper.
Divide the lentil salad between plates, serving a kebab on top of each. Slice the remaining lemon into wedges for squeezing over, and serve each portion each with 1 tablespoon of natural yoghurt.')

d19 = Dish.create!(
     name:'Roasted mustard mackerel', 
     remark: "A colourful, healthy dish ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/46265324.jpg?tr=w-800,h-1066', 
     servings: 2, 
     cooking_time:'1 hour', 
    ingredients:'
300 g raw mixed-colour beets
150 g bulgar wheat
olive oil
4 x 75 g mackerel or trout fillets , scaled and pin-boned, from sustainable sources
2 teaspoons Dijon mustard
white wine vinegar
1 tablespoon porridge oats
½ a bunch of fresh thyme , (15g)
2 large handfuls of rocket
½ a lemon
2 teaspoons jarred grated horseradish
2 tablespoons natural yoghurt', 
    methods:'
Preheat the oven to 200°C/400°F/gas 6.
Wash 300g of raw mixed-colour beets, cook in boiling salted water for 30 minutes, or until just tender (depending on their size), then drain and leave until cool enough to handle.
Meanwhile, cook 150g of bulgur wheat according to the packet instructions, and drain.
Lay a sheet of wet greaseproof paper in a 25cm x 30cm baking tray and rub it lightly with oil. Evenly spread the bulgur over the tray and place 4 fish fillets randomly on top. Loosen 2 teaspoons of Dijon mustard with a splash of vinegar, then brush over the skin side of the fish, and sprinkle over 1 tablespoon of porridge oats.
Remove the skin from the beets and finely slice them, ideally on a mandolin (use the guard!), then arrange them around the fish, overlapping the slices and tucking them up to and under the fillets in a nice even layer.
Mix 1 tablespoon of vinegar with 1 teaspoon of oil and a pinch of sea salt and black pepper to make a dressing.
Holding ½ a bunch of fresh thyme like a brush, use it to dab the dressing all over the beets, then strip over the leaves. Cook at the top of the oven for 15 to 20 minutes, or until the fish is lightly golden and cooked through.
Toss 2 large handfuls of rocket with a squeeze of juice from ½ a lemon and sprinkle over the top. Stir 2 teaspoons of jarred grated horseradish through the 2 tablespoons of natural yoghurt, season to perfection, then spoon over the fish and tuck in.')

d20 = Dish.create!(
     name:'Sweet potato fishcakes', 
     remark: "This is my hit dish. Cant go wrong with dish and potato.",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/134584618.jpg?tr=w-800,h-1066', 
     servings: 4, 
     cooking_time:'1 hour 10 mins', 
    ingredients:'
500 g potatoes
500 g sweet potatoes
2 red peppers
extra virgin olive oil
2 teaspoons chipotle Tabasco sauce
500 g white fish fillets from sustainable sources , skin off, pin-boned
olive oil
1 cucumber
1 iceburg lettuce
1 heaped teaspoon English mustard
4 heaped tablespoons natural yoghurt
1 tablespoon white wine vinegar
40 g feta cheese
½ a bunch of fresh mint , (15g)
1 lemon', 
    methods:'
Wash 500g each of potatoes and sweet potatoes (leaving the skins on for extra nutritional benefit), chop into 3cm chunks and cook in a pan of boiling salted water for 15 minutes, or until cooked through. Drain, leave to steam dry and cool, then mash.
Meanwhile, blacken 2 red peppers over a direct flame on the hob or in a griddle pan on a high heat, turning until charred and blistered all over.
Pop into a bowl and cover with clingfilm for 10 minutes, then scrape off most of the black skin, discarding the stalks and seeds. Finely chop, dress with 1 tablespoon of extra virgin olive oil and 2 teaspoons of chipotle Tabasco, then put aside.
Chop 500g of white fish fillets into 1cm dice, then mix into the cool mash really well with a pinch of sea salt and black pepper. Divide the mixture into eight even-sized balls and pat into 3cm-thick patties.
Put two large non-stick frying pans on a medium-low heat with 1 tablespoon of olive oil in each (or cook in batches). Cook four fishcakes in each pan, for 5 minutes on each side, or until golden and cooked through, carefully turning with a fish slice – if they break or crack a little don’t stress, these are light, chunky, rough-and-ready fishcakes.
Meanwhile, peel 1 cucumber, halve lengthways and scrape out the watery core, then slice ½ cm thick. Remove any tatty outer leaves from 1 iceberg lettuce, and roughly chop it into 1cm chunks.
In a bowl, dress both with 1 heaped teaspoon of English mustard, 4 heaped tablespoons of yoghurt and 1 tablespoon of white wine vinegar, mixing well, then taste, season to perfection, and crumble over 40g of feta cheese. Pick, roughly chop and stir through most of the leaves from ½ a bunch of fresh mint (15g).
Serve the fishcakes and salsa scattered with baby mint leaves, with a good portion of salad and wedges of lemon, for squeezing over.')

d21 = Dish.create!(
     name:'Spanish tortilla', 
     remark: "Can be served hot or cold and is a fantastic way of using up all kinds of ingredients – simply add in any leftover vegetables, crumbled or grated cheese, jarred red peppers or cooked sausage. ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/46260004.jpg?tr=w-800,h-1066', 
     servings: 6, 
     cooking_time:'45mins', 
    ingredients:'
300 g waxy potatoes
1 onion
olive oil
5 large free-range eggs', 
    methods:'
Peel the potatoes using a speed-peeler, then carefully cut them into thin slices. Pat the potato slices dry with a clean tea towel.
Peel and finely slice the onion. Drizzle 2 tablespoons of oil into a small frying pan over a medium heat, then add the onion and potatoes.
Turn the heat down to low and cook for 25 to 30 minutes, or until the onions are turning golden and the potato slices are cooked through. Try not to stir it too much or the potatoes will break up – just use a fish slice to flip them over halfway through.
Crack the eggs into a mixing bowl, season with a tiny pinch of sea salt and black pepper, then whisk together with a fork.
When the onions and potatoes are cooked, remove the pan from the heat and carefully tip them into the eggs. Transfer the mixture back into the frying pan and place it over a low heat. Cook for around 20 minutes, or until there’s almost no runny egg on top.
Use a fish slice to slightly lift and loosen the sides of the tortilla. Carefully flip the pan over a dinner plate and tip out the tortilla, then slide it back into the pan and cook for another 5 minutes, or until golden and cooked through.
Turn out the tortilla onto a serving board, then cut into 6 wedges and serve hot or cold with a simple green salad.
')

d22 = Dish.create!(
     name:'Kedgeree', 
     remark: "Perfect for breakfast, brunch, lunch or a hangover. ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/64288356.jpg?tr=w-800,h-1066', 
     servings: 6, 
     cooking_time:'45mins', 
    ingredients:'
300 g brown rice
450 g undyed smoked haddock fillets , from sustainable sources
2 red onions
1 fresh red chilli
½ a bunch of fresh coriander , (15g)
2 cloves of garlic
5 cm piece of ginger
olive oil
25 g unsalted butter
1 heaped teaspoon fennel seeds
1 heaped teaspoon curry powder
200 g leftover cooked greens , such as Brussels sprouts, Brussels tops, kale, cabbage, broccoli
200 g frozen peas
1 lemon
6 large free-range eggs', 
    methods:'
Cook the rice in a pan of boiling salted water according to the packet instructions, then drain and refresh under cold water, leaving it in the colander.
At the same time, poach the fish in a large pan of simmering salted water on a medium heat for 10 minutes, then carefully remove with a slotted spoon. Turn the heat up under the poaching water and bring back to a good simmer.
Meanwhile, peel the onions and finely slice with the red chilli (deseed if you like) and coriander stalks. Peel and finely chop the garlic and ginger. Place it all in a large frying pan on a medium heat with 1 tablespoon of oil and the butter, and cook for 10 minutes, or until soft but not coloured, stirring occasionally.
Crush the fennel seeds in a pestle and mortar, and stir into the pan with the curry powder.
Slice and add the leftover greens, along with the frozen peas, then gently fold in the rice with two spoons so it stays nice and fluffy.
Flake in the poached fish, gently fold again, season to perfection with sea salt, black pepper and lemon juice, then keep on a low heat for just 3 or 4 minutes while you poach the eggs to your liking in the simmering water.
Place the eggs on top of the kedgeree, scatter over the coriander leaves, and a little extra chilli, if you fancy, then tuck in. Delicious served with mango chutney, or dollops of lemon-spiked yoghurt.
')

d23 = Dish.create!(
     name:'Roll-and-go omelette wrap', 
     remark: "Quick weekend meal ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/70064531.jpg?tr=w-800,h-1066', 
     servings: 1, 
     cooking_time:'10mins', 
    ingredients:'
2 large free-range eggs
olive oil
10 g mature Cheddar cheese
1 wholegrain seeded tortilla wrap
½ a bunch of fresh basil
chilli sauce
200 g ripe tomatoes
30 g rocket', 
    methods:'
Crack 2 large eggs into a bowl or jug, season lightly with sea salt and black pepper, then whisk with a fork until well combined.
Drizzle a little olive oil into a medium non-stick frying pan over a medium heat, then carefully wipe it around and out with a ball of kitchen paper. Pour in the egg, and as it starts to cook at the edges, push it into the centre with a spatula, tilting the pan to let the raw egg run to the edges – repeat for 1 to 2 minutes, or until the omelette is almost cooked.
Finely grate over 10g mature Cheddar cheese from a height, leave for 30 seconds to 1 minute to melt, then slide carefully onto a plate.
Place 1 seeded wholemeal tortilla into the pan and warm briefly on both sides. Place the tortilla on top of the omelette, then carefully flip both back into the pan so the tortilla ends up at the bottom.
Pick and tear over the leaves from ½ a bunch of fresh basil (15g), then generously drizzle with chilli sauce.
Slice 100g of ripe tomatoes and arrange on top, scatter over 30g of rocket, then season to taste with salt and pepper.
Tear off a 30cm piece of greaseproof paper and place flat on your work surface. Carefully slide the tortilla on top, then use the greaseproof paper to help roll up the wrap. Twist the ends of the paper to secure.
Cut the wrap in half through the paper, when you’re ready to tuck in.
')

d24 = Dish.create!(
     name:'Bennett frittata', 
     remark: "Quick fun meal ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/134798615.jpg?tr=w-800,h-1066', 
     servings: 4, 
     cooking_time:'15mins', 
    ingredients:'
250 g undyed smoked haddock , from sustainable sources
4 fresh bay leaves
8 large free-range eggs
6 spring onions
½ a bunch of fresh mint , (15g)
1 large handful of frozen peas
olive oil
5 g Parmesan cheese', 
    methods:'
Get your ingredients out, then boil the kettle and put the oven grill on high, a large casserole pan on a high heat and a 26cm non-stick ovenproof frying pan on a medium heat.
Put 250g of smoked haddock and 4 fresh bay leaves into the casserole pan and cover with boiling water. Pop 200g of focaccia on the very bottom shelf of the grill to toast.
Beat 8 large eggs in a large bowl with a pinch of sea salt and black pepper.
Trim and finely slice 6 spring onions and the top leafy part of ½ a bunch of fresh mint and mix into the eggs, along with 1 large handful of frozen peas.
Use a fish slice to remove the fish to a bowl, then flake with a fork, discarding the skin.
Turn the heat under the frying pan up to high, add 1 tablespoon of olive oil and pour in the egg mixture.
Stir for a minute until it begins to set. Sprinkle over the poached haddock, finely grate over 5g of Parmesan then put the pan under the grill on the top shelf until cooked through, fluffy and golden (roughly 5 minutes).
On a nice large board, matchstick or coarsely grate 2 apples, then quickly squeeze over some lemon juice to stop them discolouring.
Finely chop ½ a bunch of fresh chives and sprinkle them over the apple.
Crumble over 1 handful of walnuts, add 75g of watercress and drizzle with 2 tablespoons of extra virgin olive oil, then toss together and season to taste.
Speed-peel 30g of Emmental over the top. Get the frittata and focaccia out from under the grill and serve straight away with lemon wedges.
')


d25 = Dish.create!(
     name:'Mexican baked eggs', 
     remark: "Fruity egg meal ",
     image:'https://img.jamieoliver.com/jamieoliver/recipe-database/90303516.jpg?tr=w-800,h-1066', 
     servings: 2, 
     cooking_time:'15mins', 
    ingredients:'
olive oil
4 large free-range eggs
1 red chilli
1 ripe avocado
½ a lime
1-2 sprigs of fresh coriander', 
    methods:'
Preheat the oven to full whack.
Grease a small skillet pan or round baking dish with a drizzle of olive oil, then crack in the eggs.
Finely slice the red chilli (deseed if you like) and scatter over the eggs.
Peel and destone the avocado, then slice. Halve the lime and squeeze over the juice of one half.
Arrange the avocado around the eggs, and season with a little sea salt and black pepper.
Place in the oven for 7 to 10 minutes, or until the whites are set but the yolks are still runny.
Pick and roughly chop a few coriander leaves and sprinkle over the eggs, then cut the remaining lime half into wedges for squeezing over. Delicious served with hot buttered toast.
')


puts "Done! Create #{Dish.count} dishes:"
puts Dish.pluck(:name).join(',')

#######----------------------------
# Create one to many associations - dishes and user
u1.dishes << d1 << d9 << d12 << d20 << d21
u2.dishes << d2 << d6 << d13 << d16 << d24
u4.dishes << d3 << d7 << d14 << d19 << d23
u4.dishes << d4 << d8 << d15 << d18 << d22
u3.dishes << d5 << d10 << d11 << d17 << d25

puts "Testing user -< dishes associations:"
puts " • the dishes '#{Dish.first.name}' is by #{Dish.first.user.name}"
puts " • the user #{User.last.name} has the dishes: #{User.last.dishes.pluck(:name).join(', ')}"

#---------------------------
puts "creating comment "

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

puts "creating category"

Category.destroy_all

cat1 = Category.create! name: 'Chicken'
cat2 = Category.create! name: 'Beef'
cat3 = Category.create! name: 'Vegetables'
cat4 = Category.create! name: 'Fish'
cat5 = Category.create! name: 'Eggs'

puts "created #{Category.count} categories"

##----------------------------------------

#Create Assocations between categories and dish

d1.categories << cat1
d2.categories << cat1 << cat3
d3.categories << cat1 << cat3
d4.categories << cat1 << cat3
d5.categories << cat1 

d6.categories << cat2 << cat3
d7.categories << cat2 << cat3
d8.categories << cat2 << cat3
d9.categories << cat2 << cat5 << cat3
d10.categories << cat2 

d11.categories << cat3 << cat5
d12.categories << cat3 << cat4
d13.categories << cat3
d14.categories << cat3
d15.categories << cat3 

d16.categories << cat4 << cat3 << cat5
d17.categories << cat4 << cat3
d18.categories << cat4 << cat3
d19.categories << cat4 << cat3
d20.categories << cat4 << cat3

d21.categories << cat5 << cat3
d22.categories << cat5 << cat3
d23.categories << cat5 << cat3
d24.categories << cat5 << cat4 << cat3
d25.categories << cat5 << cat3


puts "Category '#{cat1.name}' has dishes #{cat1.dishes.pluck(:name).join(', ')}" 
puts "Dish '#{d5.name}' is under following category of #{d5.categories.pluck(:name).join(', ')} "


#---------------------------
puts "creating recipebooks"

Recipebook.destroy_all

rb1 = Recipebook.create!(
     name:'Weekend Meals',
     image:'https://img.etimg.com/photo/msid-67268378,quality-100/weekend-gettyimages-657754434.jpg',
)
rb2 = Recipebook.create!(
     name:'Saturday Dinner Ideas',
     image:'https://www.deliciousmagazine.co.uk/wp-content/uploads/2018/07/593809-1-eng-GB_first-class-beef-curry-768x939.jpg',
)
rb3 = Recipebook.create!(
     name:'Lunch Prep',
     image:'https://www.deliciousmagazine.co.uk/wp-content/uploads/2018/09/deep-pan-pizza-768x960.jpg',
)
rb4 = Recipebook.create!(
     name:'Brunch Ideas',
     image:'https://www.deliciousmagazine.co.uk/wp-content/uploads/2018/09/519502-1-eng-GB_beer-battered-fish-with-mushy-peas-tartare-saice-and-triple-cooked-chips-768x1023.jpg',
)
rb5 = Recipebook.create!(
     name:'May Collection',
     image:'https://cdn.shopify.com/s/files/1/1510/9022/products/Portugal-the-Cookbook-Styled-4_1600x.png?v=1648688269',
)
rb6 = Recipebook.create!(
     name:'Recipes to try',
     image:'https://cdn.shopify.com/s/files/1/2276/7199/products/TCYK_BROADSHEET-070-Edit_5000x.jpg?v=1621383220',
)

puts "created #{Recipebook.count} recipebooks"

#---------------------------

#create dishes >-----< recipebooks associations

rb1.dishes << d1 << d5 << d3 << d8 << d11
rb2.dishes << d16 << d15 << d7 << d3 << d23
rb3.dishes << d5 << d4 << d20 << d16 << d8 
rb4.dishes << d16 << d22 << d23 << d10 << d2
rb5.dishes << d7 << d14 << d25 << d3 << d13
rb6.dishes << d10 << d9 << d5 << d24 << d21


puts "Recipe books '#{rb1.name}' has the dishes #{rb1.dishes.pluck(:name).join(', ')}"
puts "Dish '#{d5.name}' is on recipebooks #{d5.recipebooks.pluck(:name).join(', ')}"

#--------------------------------------
# Create one to many associations - recipebooks and users

puts "created #{User.count} users."

u1.recipebooks << rb1 << rb4 << rb3
u2.recipebooks << rb2
u3.recipebooks << rb5
u4.recipebooks << rb6

puts "user #{u1.name} has recipe books: #{u1.recipebooks.pluck(:name).join(', ')} "
puts "Recipe books '#{rb4.name}' belongs to #{rb4.user.name}"