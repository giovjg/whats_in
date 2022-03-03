# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create( name: 'Star Wars' ,  name: 'Lord of the Rings'

#   Character.create(name: 'Luke', movie: movies.first

require 'open-uri'
DishIngredient.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "starting the seeds"

 user_client = User.create!(email: "user_client@gmail.com", password: "password")
 user_owner = User.create!(email: "user_owner@gmail.com", password: "password")
 owner_photo = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQELp7bJRzb9Aw/profile-displayphoto-shrink_200_200/0/1611674841725?e=1651104000&v=beta&t=rhXKn8wnhj7mDq1uBHHq0q-8uGMDM2DVxCarb3IaCYg')
 client_photo = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQE2dyWfAre7_A/profile-displayphoto-shrink_200_200/0/1641368252586?e=1651104000&v=beta&t=jlWiL6-iZr0roYIQIWWqsPniYPMn623Sgg4kVMKzgts')
 user_client.photo.attach(io: client_photo, filename: user_client.email, content_type: 'image/jpeg')
 user_owner.photo.attach(io: owner_photo, filename: user_owner.email, content_type: 'image/jpeg')

fruits = IngredientCategory.create!(name: 'Fruits')
gluten = IngredientCategory.create!(name: 'gluten')
eggs = IngredientCategory.create!(name: 'eggs')
fish = IngredientCategory.create!(name: 'fish')
dairy = IngredientCategory.create!(name: 'dairy')
nuts = IngredientCategory.create!(name: 'nuts')
soybeans = IngredientCategory.create!(name: 'soybeans')
seafood = IngredientCategory.create!(name: 'seafood')
vegetables = IngredientCategory.create!(name: 'vegetables')
mustard = IngredientCategory.create!(name: 'mustard')
sesame = IngredientCategory.create!(name: 'sesame')
meat = IngredientCategory.create!(name: 'meat')

puts "#{IngredientCategory.all.count} categories created"

celery = Ingredient.create!(name: "celery", ingredient_category_id: vegetables.id)
onion = Ingredient.create!(name: "onion", ingredient_category_id: vegetables.id)
eggplant = Ingredient.create!(name: "eggplant", ingredient_category_id: vegetables.id)
avocado = Ingredient.create!(name: "avocado", ingredient_category_id: vegetables.id)
mushrooms = Ingredient.create!(name: "mushrooms", ingredient_category_id: vegetables.id)
tomato = Ingredient.create!(name: "tomato", ingredient_category_id: vegetables.id)
cucumber = Ingredient.create!(name: "cucumber", ingredient_category_id: vegetables.id)
apple = Ingredient.create!(name: "apple", ingredient_category_id: fruits.id)
strawberry = Ingredient.create!(name: "strawberry", ingredient_category_id: fruits.id)
pear = Ingredient.create!(name: "pear", ingredient_category_id: fruits.id)
wheat = Ingredient.create!(name: "wheat", ingredient_category_id: gluten.id)
egg = Ingredient.create!(name: "egg", ingredient_category_id: eggs.id)
salmon = Ingredient.create!(name: "salmon", ingredient_category_id: fish.id)
tuna = Ingredient.create!(name: "tuna", ingredient_category_id: fish.id)
milk = Ingredient.create!(name: "milk", ingredient_category_id: dairy.id)
yougurt = Ingredient.create!(name: "yougurt", ingredient_category_id: dairy.id)
cheese = Ingredient.create!(name: "cheese", ingredient_category_id: dairy.id)
peanuts = Ingredient.create!(name: "peanuts", ingredient_category_id: nuts.id)
almonds = Ingredient.create!(name: "almonds", ingredient_category_id: nuts.id)
walnuts = Ingredient.create!(name: "walnuts", ingredient_category_id: nuts.id)
pinenuts = Ingredient.create!(name: "pinenuts", ingredient_category_id: nuts.id)
hazelnuts = Ingredient.create!(name: "hazelnuts", ingredient_category_id: nuts.id)
cashews = Ingredient.create!(name: "cashews", ingredient_category_id: nuts.id)
soybeans = Ingredient.create!(name: "soybeans", ingredient_category_id: soybeans.id)
prawns = Ingredient.create!(name: "prawns", ingredient_category_id: seafood.id)
crab = Ingredient.create!(name: "crab", ingredient_category_id: seafood.id)
clams = Ingredient.create!(name: "clams", ingredient_category_id: seafood.id)
mustard = Ingredient.create!(name: "mustard", ingredient_category_id: mustard.id)
sesame = Ingredient.create!(name: "sesame", ingredient_category_id: sesame.id)
chicken = Ingredient.create!(name: "chicken", ingredient_category_id: meat.id)
beef = Ingredient.create!(name: "beef", ingredient_category_id: meat.id)
pork = Ingredient.create!(name: "pork", ingredient_category_id: meat.id)
duck = Ingredient.create!(name: "duck", ingredient_category_id: meat.id)

puts "#{Ingredient.all.count} categories created"


file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/ugarit_restaurant_fvqzjk.jpg')
ugarit = Restaurant.create!(
    name: 'Ugarit',
    category: 'Syrian',
    address: 'Carrer de Bruniquer, 69, 08024 Barcelona',
    telephone: '645181011',
    rating: 2.5,
    price: '££',
    start_time: 1,
    end_time: 11,
    adaptability: true
)
ugarit.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

shawarma = Dish.create!(name:'Shawarma' ,restaurant_id: ugarit.id)
kebab = Dish.create!(name:'Kebab' ,restaurant_id: ugarit.id)
hummus = Dish.create!(name:'Hummus' ,restaurant_id: ugarit.id)
tabouleh = Dish.create!(name:'Tabouleh' ,restaurant_id: ugarit.id)

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/almacen_restaurant_rfcclt.jpg')
almacen = Restaurant.create!(
    name: 'El viejo Almacen',
    category: 'argentinian',
    address: 'Carrer de Ramón y Cajal, 158, 08024 Barcelona',
    telephone: '645181012',
    rating: 1.5,
    price: '£' ,
    wifi: true ,
    start_time: 1,
    end_time: 11,

)
almacen.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

empanadaDeCarne = Dish.create!(name:'Empanada de carne' ,restaurant_id: almacen.id)
empanadaVegetal = Dish.create!(name:'Empanada vegetal' ,restaurant_id: almacen.id)
empanadaJamonYQueso = Dish.create!(name:'Empanada jamon y queso' ,restaurant_id: almacen.id)
empandaDePollo = Dish.create!(name:'Empanda de pollo' ,restaurant_id: almacen.id)

file =
URI.open("https://www.tierraburritos.com/wp-content/uploads/Glories12-1024x633.jpg")
tierra = Restaurant.create!(
    name: 'Tierra' ,
    category: 'mexican' ,
    address: "Carrer D'avila, 171, 08018 Barcelona" ,
    telephone: '645181013' ,
    rating: 3.5,
    price: '£' ,
    wifi: true ,
    start_time: 1,
    end_time: 12,
    adaptability: true
)
tierra.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

tacoAlPastor = Dish.create!(name:'Taco al pastor' ,restaurant_id: tierra.id)
tacoCarnitas = Dish.create!(name:'Taco carnitas' ,restaurant_id: tierra.id)
tacoVeg = Dish.create!(name:'Taco veg' ,restaurant_id: tierra.id)
tacoMushroom = Dish.create!(name:'Taco mushrooms' ,restaurant_id: tierra.id)


file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/Dolce-Pizza-comedor_restaurant_ertlrw.jpg')
dolce = Restaurant.create!(
    name: 'Dolce pizza ' ,
    category: 'pizza' ,
    address: 'Carrer d Hipòlit Lázaro, 34, 08025 Barcelona' ,
    telephone: '645181014' ,
    rating: 4.5,
    price: '££',
    wifi: true ,
    start_time: 1,
    end_time: 11
)
dolce.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


margarita = Dish.create!(name:'Margarita' ,restaurant_id: dolce.id)
diavola = Dish.create!(name:'Diavola' ,restaurant_id: dolce.id)
cuattroStagioni = Dish.create!(name:'Cuattro stagioni' ,restaurant_id: dolce.id)
cuattroFormaggi = Dish.create!(name:'Cuattro formaggi' ,restaurant_id: dolce.id)


file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646320995/274069923_468598974730254_2982254997917976405_n_pcvnx6.jpg')
world = Restaurant.create!(
    name: 'Veg World India' ,
    category: 'indian' ,
    address: 'Carrer de Bruniquer, 24, 08012 Barcelona' ,
    telephone: '645181015' ,
    rating: 5.0,
    price: '£££',
    start_time: 1,
    end_time: 11
)
world.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

dhal = Dish.create!(name:'Dhal' ,restaurant_id: world.id)
tikkaMasala = Dish.create!(name:'Tikka Masala' ,restaurant_id: world.id)
pakoras = Dish.create!(name:'Pakoras' ,restaurant_id: world.id)
korma = Dish.create!(name:'Korma' ,restaurant_id: world.id)

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/kobe_restaurant_dpjpgs.jpg')
koby = Restaurant.create!(
    name: 'Koby Burgers' ,
    category: 'burger' ,
    address: 'Carrer de Marià Cubí, 92, 08021 Barcelona' ,
    telephone: '645181016' ,
    rating: 1.5,
    price: '££' ,
    start_time: 1,
    end_time: 11,
    adaptability: true
)
koby.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


hamburger = Dish.create!(name:'Hamburger' ,restaurant_id: koby.id)
cheeseburger = Dish.create!(name:'Cheeseburger' ,restaurant_id: koby.id)
veggiburger = Dish.create!(name:'Veggiburger' ,restaurant_id: koby.id)
chickenburger = Dish.create!(name:'Chickenburger' ,restaurant_id: koby.id)

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/tomodashi_restaurant_ucv1q5.jpg')
tomodachi = Restaurant.create!(
    name: 'Tomodachi' ,
    category: 'sushi' ,
    address: ' Travessera de Gràcia, 250, 08025 Barcelona' ,
    telephone: '645181017' ,
    rating: 5.0,
    price: '£££' ,
    start_time: 1,
    end_time: 12
)
tomodachi.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

nigriri = Dish.create!(name:'Nigriri' ,restaurant_id: tomodachi.id)
maki = Dish.create!(name:'Maki' ,restaurant_id: tomodachi.id)
uramaki = Dish.create!(name:'Uramaki' ,restaurant_id: tomodachi.id)
temaki = Dish.create!(name:'Temaki' ,restaurant_id: tomodachi.id)

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/piadina_restaurant_yup6sa.jpg')
piadina = Restaurant.create!(
    name: 'La Piadina',
    category: 'italian',
    address: 'Carrer de la Santa Creu, 1, 08024 Barcelona',
    telephone: '645181018',
    rating: 4.5,
    price: '£££',
    wifi: true,
    start_time: 1,
    end_time: 12
 )
 piadina.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

 vongole = Dish.create!(name:'Vongole' ,restaurant_id: piadina.id)
 spagettiAlPesto = Dish.create!(name:'Spagetti al pesto' ,restaurant_id: piadina.id)
 carbonara = Dish.create!(name:'Carbonara' ,restaurant_id: piadina.id)
 pastaNorma = Dish.create!(name:'Pasta Norma' ,restaurant_id: piadina.id)

 file =
 URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646320000/yoma_restaurant_kgnw62.jpg')
 yoma = Restaurant.create!(
    name: 'Yoma' ,
    category: 'chinese' ,
    address: 'Travessera de Gràcia, 281, 08025 Barcelona',
    telephone: '645181019' ,
    rating: 3.5,
    price: '£££' ,
    wifi: true,
    start_time: 1,
    end_time: 11
 )
 yoma.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

 kungPaoChicken = Dish.create!(name:'Kung Pao Chicken' ,restaurant_id: yoma.id)
 dumplings = Dish.create!(name:'Dumplings' ,restaurant_id: yoma.id)
 cantoneseDimSum = Dish.create!(name:'Cantonese Dim Sum' ,restaurant_id: yoma.id)
 sweetAndSourPork = Dish.create!(name:'Sweet and Sour Pork' ,restaurant_id: yoma.id)

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646320921/sannin_restaurant_zyi6ws.jpg')
shannin = Restaurant.create!(
    name: 'Sannin' ,
    category: 'libanise' ,
    address: "Carrer de l'Encarnació, 44, 08024 Barcelona" ,
    telephone: '645181020' ,
    rating: 3.5,
    price: '£££' ,
    wifi: false,
    start_time: 1,
    end_time: 11
 )
 shannin.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


 cousCousVegetal = Dish.create!(name:'Cous-Cous Vegetal' ,restaurant_id: shannin.id)
 kafta = Dish.create!(name:'Kafta' ,restaurant_id: shannin.id)
 xixTawuk = Dish.create!(name:'Xix Tawuk' ,restaurant_id: shannin.id)
 kebe = Dish.create!(name:'Kebe' ,restaurant_id: shannin.id)

 puts "#{Restaurant.all.count} categories created"
 puts "#{Dish.all.count} categories created"

 #ugarit
 sha = DishIngredient.create!(dish_id: shawarma.id ,ingredient_id: wheat.id)
 keb = DishIngredient.create!(dish_id: kebab.id ,ingredient_id: beef.id)
 hum = DishIngredient.create!(dish_id: hummus.id ,ingredient_id: sesame.id)
 tab = DishIngredient.create!(dish_id: tabouleh.id ,ingredient_id: walnuts.id)

 #almacen
 car = DishIngredient.create!(dish_id: empanadaDeCarne.id ,ingredient_id: pork.id)
 veg = DishIngredient.create!(dish_id: empanadaVegetal.id ,ingredient_id: celery.id)
 jam = DishIngredient.create!(dish_id: empanadaJamonYQueso.id ,ingredient_id: cheese.id)
 poll = DishIngredient.create!(dish_id: empandaDePollo.id ,ingredient_id: chicken.id)

 #tierra
 pas = DishIngredient.create!(dish_id: tacoAlPastor.id ,ingredient_id: pork.id)
 car = DishIngredient.create!(dish_id: tacoCarnitas.id ,ingredient_id: beef.id)
 tveg = DishIngredient.create!(dish_id: tacoVeg.id ,ingredient_id: avocado.id)
 mush = DishIngredient.create!(dish_id: tacoMushroom.id ,ingredient_id: mushrooms.id)

 #dolce
pas = DishIngredient.create!(dish_id: margarita.id ,ingredient_id: cheese.id)
car = DishIngredient.create!(dish_id: diavola.id ,ingredient_id: pork.id)
tveg = DishIngredient.create!(dish_id: cuattroStagioni.id ,ingredient_id: onion.id)
mush = DishIngredient.create!(dish_id: cuattroFormaggi.id ,ingredient_id: tomato.id)

#world
dhl = DishIngredient.create!(dish_id: dhal.id ,ingredient_id: prawns.id)
tik = DishIngredient.create!(dish_id: tikkaMasala.id ,ingredient_id: tomato.id)
pak = DishIngredient.create!(dish_id: pakoras.id ,ingredient_id: onion.id)
kor = DishIngredient.create!(dish_id: korma.id ,ingredient_id: milk.id)

# dhal = Dish.create!(name:'Dhal' ,restaurant_id: worl.id)
# tikkaMasala = Dish.create!(name:'Tikka Masala' ,restaurant_id: worl.id)
# pakoras = Dish.create!(name:'Pakora' ,restaurant_id: worl.id)
# korma = Dish.create!(name:'Korma' ,restaurant_id: worl.id)

# koby
ham = DishIngredient.create!(dish_id: hamburger.id ,ingredient_id: wheat.id)
che = DishIngredient.create!(dish_id: cheeseburger.id ,ingredient_id: cheese.id)
veb = DishIngredient.create!(dish_id: veggiburger.id ,ingredient_id: mustard.id)
chb = DishIngredient.create!(dish_id: chickenburger.id ,ingredient_id: tomato.id)

# hamburger = Dish.create!(name:'Hamburger' ,restaurant_id: koby.id)
# cheeseburger = Dish.create!(name:'Cheeseburger' ,restaurant_id: koby.id)
# veggiburger = Dish.create!(name:'Veggiburger' ,restaurant_id: koby.id)
# chickenburger = Dish.create!(name:'Chickenburger' ,restaurant_id: koby.id)

# tomodachi
pas = DishIngredient.create!(dish_id: nigriri.id ,ingredient_id: soybeans.id)
car = DishIngredient.create!(dish_id: maki.id ,ingredient_id: tuna.id)
tveg = DishIngredient.create!(dish_id: uramaki.id ,ingredient_id: crab.id)
mush = DishIngredient.create!(dish_id: temaki.id ,ingredient_id: salmon.id)

# nigriri = Dish.create!(name:'Nigriri' ,restaurant_id: tomodachi.id)
# maki = Dish.create!(name:'Maki' ,restaurant_id: tomodachi.id)
# uramaki = Dish.create!(name:'Uramaki' ,restaurant_id: tomodachi.id)
# temaki = Dish.create!(name:'Temaki' ,restaurant_id: tomodachi.id)

# piadina
von = DishIngredient.create!(dish_id: vongole.id ,ingredient_id: clams.id)
spa = DishIngredient.create!(dish_id: spagettiAlPesto.id ,ingredient_id: pinenuts.id)
car = DishIngredient.create!(dish_id: carbonara.id ,ingredient_id: egg.id)
pno = DishIngredient.create!(dish_id: pastaNorma.id ,ingredient_id: eggplant.id)

# vongole = Dish.create!(name:'Vongole' ,restaurant_id: piadina.id)
# spagettiAlPesto = Dish.create!(name:'Spagetti al pesto' ,restaurant_id: piadina.id)
# carbonara = Dish.create!(name:'Carbonara' ,restaurant_id: piadina.id)
# pastaNorma = Dish.create!(name:'Pasta Norma' ,restaurant_id: piadina.id)

# yoma
kun = DishIngredient.create!(dish_id: kungPaoChicken.id ,ingredient_id: chicken.id)
dum = DishIngredient.create!(dish_id: dumplings.id ,ingredient_id: wheat.id)
can = DishIngredient.create!(dish_id: cantoneseDimSum.id ,ingredient_id: peanuts.id)
swe = DishIngredient.create!(dish_id: sweetAndSourPork.id ,ingredient_id: walnuts.id)

# kungPaoChicken = Dish.create!(name:'Kung Pao Chicken' ,restaurant_id: yoma.id)
# dumplings = Dish.create!(name:'Dumplings' ,restaurant_id: yoma.id)
# cantoneseDimSum = Dish.create!(name:'Cantonese Dim Sum' ,restaurant_id: yoma.id)
# sweetAndSourPork = Dish.create!(name:'Sweet and Sour Pork' ,restaurant_id: yoma.id)


# shannin
cou = DishIngredient.create!(dish_id: cousCousVegetal.id ,ingredient_id: celery.id)
kaf = DishIngredient.create!(dish_id: kafta.id ,ingredient_id: pork.id)
xix = DishIngredient.create!(dish_id: xixTawuk.id ,ingredient_id: wheat.id)
keb = DishIngredient.create!(dish_id: kebe.id ,ingredient_id: duck.id)

# cousCousVegetal = Dish.create!(name:'Cous-Cous Vegetal' ,restaurant_id: shannin.id)
# kafta = Dish.create!(name:'Kafta' ,restaurant_id: shannin.id)
# xixTawuk = Dish.create!(name:'Xix Tawuk' ,restaurant_id: shannin.id)
# kebe = Dish.create!(name:'Kebe' ,restaurant_id: shannin.id)

puts "#{DishIngredient.all.count} categories created"
puts "seeds are done!!!"
