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
Ingredient.destroy_all
IngredientCategory.destroy_all

puts "starting the seeds"

 user_client = User.create!(email: "user_client@gmail.com", password: "password")
 user_owner = User.create!(email: "user_owner@gmail.com", password: "password")
 #owner_photo = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQELp7bJRzb9Aw/profile-displayphoto-shrink_200_200/0/1611674841725?e=1651104000&v=beta&t=rhXKn8wnhj7mDq1uBHHq0q-8uGMDM2DVxCarb3IaCYg')
 #client_photo = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQE2dyWfAre7_A/profile-displayphoto-shrink_200_200/0/1641368252586?e=1651104000&v=beta&t=jlWiL6-iZr0roYIQIWWqsPniYPMn623Sgg4kVMKzgts')
 #user_client.photo.attach(io: client_photo, filename: user_client.email, content_type: 'image/jpeg')
 #user_owner.photo.attach(io: owner_photo, filename: user_owner.email, content_type: 'image/jpeg')

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
cod = Ingredient.create!(name: "cod", ingredient_category_id: fish.id)
milk = Ingredient.create!(name: "milk", ingredient_category_id: dairy.id)
yougurt = Ingredient.create!(name: "yougurt", ingredient_category_id: dairy.id)
cheese = Ingredient.create!(name: "cheese", ingredient_category_id: dairy.id)
peanuts = Ingredient.create!(name: "peanuts", ingredient_category_id: nuts.id)
almonds = Ingredient.create!(name: "almonds", ingredient_category_id: nuts.id)
walnuts = Ingredient.create!(name: "walnuts", ingredient_category_id: nuts.id)
pinenuts = Ingredient.create!(name: "pine nuts", ingredient_category_id: nuts.id)
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

puts "#{Ingredient.all.count} ingredients created"


file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/ugarit_restaurant_fvqzjk.jpg')
ugarit = Restaurant.create!(
    name: 'Ugarit',
    category: 'Syrian',
    address: 'Carrer de Bruniquer, 69, 08024 Barcelona',
    telephone: '645181011',
    rating: 2.5,
    price: '€€',
    start_time: 1,
    end_time: 11,
    adaptability: true
)
ugarit.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

shawarma = Dish.create!(name:'Shawarma' ,restaurant_id: ugarit.id)
kebab = Dish.create!(name:'Kebab' ,restaurant_id: ugarit.id)
hummus = Dish.create!(name:'Hummus' ,restaurant_id: ugarit.id)
tabouleh = Dish.create!(name:'Tabouleh' ,restaurant_id: ugarit.id)
kafta = Dish.create!(name:'Kafta' ,restaurant_id: ugarit.id)
kanafeh = Dish.create!(name:'Kanafeh' ,restaurant_id: ugarit.id)
fattoush = Dish.create!(name:'Fattoush' ,restaurant_id: ugarit.id)
manakish = Dish.create!(name:'Manakish' ,restaurant_id: ugarit.id)

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/almacen_restaurant_rfcclt.jpg')
almacen = Restaurant.create!(
    name: 'El viejo Almacen',
    category: 'Argentinian',
    address: 'Carrer de Ramón y Cajal, 158, 08024 Barcelona',
    telephone: '645181012',
    rating: 1.5,
    price: '€' ,
    wifi: true ,
    start_time: 1,
    end_time: 11,

)
almacen.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646669732/dishes/ampanadas/photo-1634750188038-d0f806ebe6c5_ql6pzg.avif')
empanadaDeCarne = Dish.create!(name:'Empanada de carne' ,restaurant_id: almacen.id)
empanadaDeCarne.photo.attach(io: file, filename: 'empanadaDeCarne.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646669721/dishes/ampanadas/photo-1646314230198-e27c375e1a2a_ysk1m2.avif')
empanadaVegetal = Dish.create!(name:'Empanada vegetal' ,restaurant_id: almacen.id)
empanadaVegetal.photo.attach(io: file, filename: 'empanadaVegetal.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646669714/dishes/ampanadas/photo-1634750188025-aac853781a96_pvzjw7.avif')
empanadaJamonYQueso = Dish.create!(name:'Empanada jamon y queso' ,restaurant_id: almacen.id)
empanadaJamonYQueso.photo.attach(io: file, filename: 'empanadaJamonYQueso.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646669697/dishes/ampanadas/photo-1618686397306-b1a4a556f138_frqjl0.avif')
empandaDePollo = Dish.create!(name:'Empanda de pollo' ,restaurant_id: almacen.id)
empandaDePollo.photo.attach(io: file, filename: 'empandaDePollo.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646669680/dishes/ampanadas/istockphoto-1297540439-170667a_tjtkhf.jpg')
empanadaDeBacalao = Dish.create!(name:'Empanada de bacalao' ,restaurant_id: almacen.id)
empanadaDeBacalao.photo.attach(io: file, filename: 'empanadaDeBacalao.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646669680/dishes/ampanadas/istockphoto-1297540439-170667a_tjtkhf.jpg')
empanadaSeafood = Dish.create!(name:'Empanada seafood' ,restaurant_id: almacen.id)
empanadaSeafood.photo.attach(io: file, filename: 'empanadaSeafood.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646669673/dishes/ampanadas/istockphoto-1176364232-170667a_vh6fzr.jpg')
empanadaSoya = Dish.create!(name:'Empanada soya' ,restaurant_id: almacen.id)
empanadaSoya.photo.attach(io: file, filename: 'empanadaSoya.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646669670/dishes/ampanadas/istockphoto-521954007-170667a_vvuyli.jpg')
empandaDulce = Dish.create!(name:'Empanda dulce' ,restaurant_id: almacen.id)
empandaDulce.photo.attach(io: file, filename: 'empandaDulce.jpg', content_type: 'image/jpg')


file =
URI.open("https://www.tierraburritos.com/wp-content/uploads/Glories12-1024x633.jpg")
tierra = Restaurant.create!(
    name: 'Tierra' ,
    category: 'Mexican' ,
    address: "Carrer D'avila, 171, 08018 Barcelona" ,
    telephone: '+34645181001' ,
    rating: 3.5,
    price: '€' ,
    wifi: true ,
    start_time: 1,
    end_time: 12,
    adaptability: true
)
tierra.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646671712/dishes/tacos/photo-1615870216519-2f9fa575fa5c_foxakg.avif')
tacoAlPastor = Dish.create!(name:'Taco al pastor' ,restaurant_id: tierra.id)
tacoAlPastor.photo.attach(io: file, filename: 'tacoAlPastor.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646671702/dishes/tacos/photo-1565299585323-38d6b0865b47_savkdd.avif')
tacoCarnitas = Dish.create!(name:'Taco carnitas' ,restaurant_id: tierra.id)
tacoCarnitas.photo.attach(io: file, filename: 'tacoCarnitas.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646671694/dishes/tacos/photo-1504544750208-dc0358e63f7f_i1yhwl.avif')
tacoVeg = Dish.create!(name:'Taco veg' ,restaurant_id: tierra.id)
tacoVeg.photo.attach(io: file, filename: 'tacoVeg.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646671688/dishes/tacos/photo-1551504734-5ee1c4a1479b_a6hcfx.avif')
tacoMushroom = Dish.create!(name:'Taco mushrooms' ,restaurant_id: tierra.id)
tacoMushroom.photo.attach(io: file, filename: 'tacoMushroom.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646671674/dishes/tacos/istockphoto-1341594041-170667a_uxvrz0.jpg')
tacoPescado = Dish.create!(name:'Taco pescado' ,restaurant_id: tierra.id)
tacoPescado.photo.attach(io: file, filename: 'tacoPescado.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646671669/dishes/tacos/istockphoto-1298809774-170667a_id47ss.jpg')
tacoSeafood = Dish.create!(name:'Taco seafood' ,restaurant_id: tierra.id)
tacoSeafood.photo.attach(io: file, filename: 'tacoSeafood.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646671664/dishes/tacos/istockphoto-1296272943-170667a_svuyhg.jpg')
tacoTofu = Dish.create!(name:'Taco tofu' ,restaurant_id: tierra.id)
tacoTofu.photo.attach(io: file, filename: 'tacoTofu.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646671895/dishes/tacos/photo-1618416019363-34805b84d3c1_qwfbdw.avif')
tacoChorizo = Dish.create!(name:'Taco chorizo' ,restaurant_id: tierra.id)
tacoChorizo.photo.attach(io: file, filename: 'tacoChorizo.jpg', content_type: 'image/jpg')


file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/Dolce-Pizza-comedor_restaurant_ertlrw.jpg')
dolce = Restaurant.create!(
    name: 'Dolce pizza ' ,
    category: 'Pizza' ,
    address: 'Carrer d Hipòlit Lázaro, 34, 08025 Barcelona' ,
    telephone: '645181014' ,
    rating: 4.5,
    price: '€€',
    wifi: true ,
    start_time: 1,
    end_time: 11
)
dolce.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


margarita = Dish.create!(name:'Margarita' ,restaurant_id: dolce.id)
diavola = Dish.create!(name:'Diavola' ,restaurant_id: dolce.id)
cuattroStagioni = Dish.create!(name:'Cuattro stagioni' ,restaurant_id: dolce.id)
cuattroFormaggi = Dish.create!(name:'Cuattro formaggi' ,restaurant_id: dolce.id)
bufalina = Dish.create!(name:'Bufalina' ,restaurant_id: dolce.id)
capricciosa = Dish.create!(name:'Capricciosa' ,restaurant_id: dolce.id)
rustica = Dish.create!(name:'Rustica' ,restaurant_id: dolce.id)
tonnata = Dish.create!(name:'Tonnata' ,restaurant_id: dolce.id)



file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646320995/274069923_468598974730254_2982254997917976405_n_pcvnx6.jpg')
world = Restaurant.create!(
    name: 'Veg World India' ,
    category: 'Indian' ,
    address: 'Carrer de Bruniquer, 24, 08012 Barcelona' ,
    telephone: '645181015' ,
    rating: 5.0,
    price: '€€€',
    start_time: 1,
    end_time: 11
)
world.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646723622/dishes/indian/istockphoto-1311491582-170667a_aghsxm.jpg')
dhal = Dish.create!(name:'Dhal' ,restaurant_id: world.id)
dhal.photo.attach(io: file, filename: 'dhal.jpg', content_type: 'image/jpg')


file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646723680/dishes/indian/istockphoto-477879982-612x612_mcxfyh.jpg')
tikkaMasala = Dish.create!(name:'Tikka Masala' ,restaurant_id: world.id)
tikkaMasala.photo.attach(io: file, filename: 'tikkaMasala.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646723626/dishes/indian/istockphoto-177043240-170667a_c3es35.jpg')
pakoras = Dish.create!(name:'Pakoras' ,restaurant_id: world.id)
pakoras.photo.attach(io: file, filename: 'pakoras.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646723659/dishes/indian/photo-1606471191009-63994c53433b_ww4ara.avif')
korma = Dish.create!(name:'Korma' ,restaurant_id: world.id)
korma.photo.attach(io: file, filename: 'korma.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646723633/dishes/indian/istockphoto-1290444763-170667a_rgxobf.jpg')
alooGobi = Dish.create!(name:'Aloo Gobi' ,restaurant_id: world.id)
alooGobi.photo.attach(io: file, filename: 'alooGobi.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646723641/dishes/indian/photo-1517244683847-7456b63c5969_hivygh.avif')
chanaMasala = Dish.create!(name:'Chana Masala' ,restaurant_id: world.id)
chanaMasala.photo.attach(io: file, filename: 'chanaMasala.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646723652/dishes/indian/photo-1596797038530-2c107229654b_yuroq3.avif')
palak = Dish.create!(name:'Palak' ,restaurant_id: world.id)
palak.photo.attach(io: file, filename: 'palak.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646723647/dishes/indian/photo-1505253758473-96b7015fcd40_pwxaqc.avif')
butterChicken = Dish.create!(name:'Butter Chicken' ,restaurant_id: world.id)
butterChicken.photo.attach(io: file, filename: 'butterChicken.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646724558/dishes/photo-1593462386344-bc7ffba51a1e_mpjzta.avif')
koby = Restaurant.create!(
    name: 'Koby Burgers' ,
    category: 'Burger' ,
    address: 'Carrer de Marià Cubí, 92, 08021 Barcelona' ,
    telephone: '645181016' ,
    rating: 1.5,
    price: '€€' ,
    start_time: 1,
    end_time: 11,
    adaptability: true
)
koby.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646666935/dishes/burgers/photo-1606755962773-d324e0a13086_hprkal.avif')
hamburger = Dish.create!(name:'Hamburger' ,restaurant_id: koby.id)
hamburger.photo.attach(io: file, filename: 'hamburger.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646666883/dishes/burgers/photo-1565299507177-b0ac66763828_qjakjz.avif')
cheeseburger = Dish.create!(name:'Cheeseburger' ,restaurant_id: koby.id)
cheeseburger.photo.attach(io: file, filename: 'cheeseburger.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646666929/dishes/burgers/photo-1582196016295-f8c8bd4b3a99_nkjbh7.avif')
veggiburger = Dish.create!(name:'Veggiburger' ,restaurant_id: koby.id)
veggiburger.photo.attach(io: file, filename: 'veggiburger.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646666828/dishes/burgers/photo-1568901346375-23c9450c58cd_r8hc8a.avif')
chickenburger = Dish.create!(name:'Chickenburger' ,restaurant_id: koby.id)
chickenburger.photo.attach(io: file, filename: 'chickenburger.jpg', content_type: 'image/jpg')
file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646666897/dishes/burgers/photo-1572802419224-296b0aeee0d9_r9xpp8.avif')
fishburger = Dish.create!(name:'Fishburger' ,restaurant_id: koby.id)
fishburger.photo.attach(io: file, filename: 'fishburger.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646666916/dishes/burgers/photo-1566217688581-b2191944c2f9_cifdos.avif')
seafoodburger = Dish.create!(name:'Seafoodburger' ,restaurant_id: koby.id)
seafoodburger.photo.attach(io: file, filename: 'seafoodburger.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646666871/dishes/burgers/photo-1596662951482-0c4ba74a6df6_aokmgj.avif')
tofuburger = Dish.create!(name:'Tofuburger' ,restaurant_id: koby.id)
tofuburger.photo.attach(io: file, filename: 'tofuburger.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646666845/dishes/burgers/photo-1550547660-d9450f859349_l17q8e.avif')
carrotburger = Dish.create!(name:'Carrotburger' ,restaurant_id: koby.id)
carrotburger.photo.attach(io: file, filename: 'carrotburger.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/tomodashi_restaurant_ucv1q5.jpg')
tomodachi = Restaurant.create!(
    name: 'Tomodachi' ,
    category: 'Sushi' ,
    address: ' Travessera de Gràcia, 250, 08025 Barcelona' ,
    telephone: '645181017' ,
    rating: 5.0,
    price: '€€€' ,
    start_time: 1,
    end_time: 12
)
tomodachi.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646722918/dishes/sushi/istockphoto-1298575561-170667a_bj6jdm.jpg')
nigriri = Dish.create!(name:'Nigriri' ,restaurant_id: tomodachi.id)
nigriri.photo.attach(io: file, filename: 'nigriri.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646722914/dishes/sushi/istockphoto-1286622470-170667a_jelcln.jpg')
maki = Dish.create!(name:'Maki' ,restaurant_id: tomodachi.id)
maki.photo.attach(io: file, filename: 'maki.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646722910/dishes/sushi/istockphoto-183341110-170667a_aprw4h.jpg')
uramaki = Dish.create!(name:'Uramaki' ,restaurant_id: tomodachi.id)
uramaki.photo.attach(io: file, filename: 'uramaki.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646722970/dishes/sushi/photo-1617196035154-1e7e6e28b0db_b9az7s.avif')
temaki = Dish.create!(name:'Temaki' ,restaurant_id: tomodachi.id)
temaki.photo.attach(io: file, filename: 'temaki.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646722955/dishes/sushi/photo-1582450871972-ab5ca641643d_mrsdbj.avif')
gunkan = Dish.create!(name:'Gunkan' ,restaurant_id: tomodachi.id)
gunkan.photo.attach(io: file, filename: 'gunkan.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646722948/dishes/sushi/photo-1580822184713-fc5400e7fe10_zz3af8.avif')
futomaki = Dish.create!(name:'Futomaki' ,restaurant_id: tomodachi.id)
futomaki.photo.attach(io: file, filename: 'futomaki.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646722939/dishes/sushi/photo-1579584425555-c3ce17fd4351_rwip7h.avif')
sashimi = Dish.create!(name:'Sashimi' ,restaurant_id: tomodachi.id)
sashimi.photo.attach(io: file, filename: 'sashimi.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646722924/dishes/sushi/istockphoto-1320922361-170667a_klkvdu.jpg')
inari = Dish.create!(name:'Inari' ,restaurant_id: tomodachi.id)
inari.photo.attach(io: file, filename: 'inari.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646319972/piadina_restaurant_yup6sa.jpg')
piadina = Restaurant.create!(
    name: 'La Piadina',
    category: 'Italian',
    address: 'Carrer de la Santa Creu, 1, 08024 Barcelona',
    telephone: '645181018',
    rating: 4.5,
    price: '€€€',
    wifi: true,
    start_time: 1,
    end_time: 12
 )
 piadina.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646672729/dishes/pasta/photo-1595295333158-4742f28fbd85_ftjnju.avif')
 vongole = Dish.create!(name:'Vongole' ,restaurant_id: piadina.id)
 vongole.photo.attach(io: file, filename: 'vongole.jpg', content_type: 'image/jpg')

 file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646672697/dishes/pasta/istockphoto-1309699313-170667a_yjyu30.jpg')
 spagettiAlPesto = Dish.create!(name:'Spagetti al pesto' ,restaurant_id: piadina.id)
 spagettiAlPesto.photo.attach(io: file, filename: 'spagettiAlPesto.jpg', content_type: 'image/jpg')

 file =
 URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646673017/dishes/pasta/photo-1608219992759-8d74ed8d76eb_lupnpa.avif')
 carbonara = Dish.create!(name:'Carbonara' ,restaurant_id: piadina.id)
 carbonara.photo.attach(io: file, filename: 'carbonara.jpg', content_type: 'image/jpg')

 file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646672687/dishes/pasta/photo-1608897013039-887f21d8c804_guojb3.avif')
 pastaNorma = Dish.create!(name:'Pasta Norma' ,restaurant_id: piadina.id)
 pastaNorma.photo.attach(io: file, filename: 'pastaNorma.jpg', content_type: 'image/jpg')

 file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646672783/dishes/pasta/photo-1600803907087-f56d462fd26b_x5ydrt.avif')
 aglio = Dish.create!(name:'Aglio' ,restaurant_id: piadina.id)
 aglio.photo.attach(io: file, filename: 'aglio.jpg', content_type: 'image/jpg')

 file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646672722/dishes/pasta/photo-1563379926898-05f4575a45d8_xr5v8m.avif')
 parmigiana = Dish.create!(name:'Parmigiana' ,restaurant_id: piadina.id)
 parmigiana.photo.attach(io: file, filename: 'parmigiana.jpg', content_type: 'image/jpg')

 file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646672711/dishes/pasta/photo-1579684947550-22e945225d9a_xnyndi.avif')
 provolone = Dish.create!(name:'Provolone' ,restaurant_id: piadina.id)
 provolone.photo.attach(io: file, filename: 'provolone.jpg', content_type: 'image/jpg')

 file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1646672717/dishes/pasta/photo-1551183053-bf91a1d81141_rqbdfa.avif')
 pastaAlaTonna = Dish.create!(name:'Pasta ala tonna' ,restaurant_id: piadina.id)
 pastaAlaTonna.photo.attach(io: file, filename: 'pastaAlaTonna.jpg', content_type: 'image/jpg')

 file =
 URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/v1646320000/yoma_restaurant_kgnw62.jpg')
 yoma = Restaurant.create!(
    name: 'Yoma' ,
    category: 'Chinese' ,
    address: 'Travessera de Gràcia, 281, 08025 Barcelona',
    telephone: '645181019' ,
    rating: 3.5,
    price: '€€€' ,
    wifi: true,
    start_time: 1,
    end_time: 11
 )
 yoma.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

 kungPaoChicken = Dish.create!(name:'Kung Pao Chicken' ,restaurant_id: yoma.id)
 dumplings = Dish.create!(name:'Dumplings' ,restaurant_id: yoma.id)
 cantoneseDimSum = Dish.create!(name:'Cantonese Dim Sum' ,restaurant_id: yoma.id)
 charSiu = Dish.create!(name:'Char Siu' ,restaurant_id: yoma.id)
 sweetAndSourPork = Dish.create!(name:'Sweet and sour pork' ,restaurant_id: yoma.id)
 hotPot = Dish.create!(name:'Hot Pot' ,restaurant_id: yoma.id)
 dimSum = Dish.create!(name:'Dim Sum' ,restaurant_id: yoma.id)
 maPoTofu = Dish.create!(name:'Ma Po Tofu' ,restaurant_id: yoma.id)

file =
URI.open('https://res.cloudinary.com/ddamh5wea/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1646724231/dishes/photo-1517248135467-4c7edcad34c4_n1eaqn.avif')
shannin = Restaurant.create!(
    name: 'Sannin' ,

    category: 'lebanese' ,
    address: "Carrer de l'Encarnació, 44, 08024 Barcelona" ,
    telephone: '645181020' ,
    rating: 3.5,
    price: '€€€' ,
    wifi: false,
    start_time: 1,
    end_time: 11
 )
 shannin.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


 cousCousVegetal = Dish.create!(name:'Cous-Cous Vegetal' ,restaurant_id: shannin.id)
 kafta = Dish.create!(name:'Kafta' ,restaurant_id: shannin.id)
 xixTawuk = Dish.create!(name:'Xix Tawuk' ,restaurant_id: shannin.id)
 kebe = Dish.create!(name:'Kebe' ,restaurant_id: shannin.id)
 manakish = Dish.create!(name:'Manakish' ,restaurant_id: shannin.id)
 yabrak = Dish.create!(name:'Yabrak' ,restaurant_id: shannin.id)
 sheikhAlMahshi = Dish.create!(name:'Sheikh Al Mahshi' ,restaurant_id: shannin.id)
 melehi = Dish.create!(name:'Melehi' ,restaurant_id: shannin.id)

 puts "#{Restaurant.all.count} restaurants created"
 puts "#{Dish.all.count} dishes created"

 #ugarit
# kafta = Dish.create!(name:'Kafta' ,restaurant_id: ugarit.id)
# kanafeh = Dish.create!(name:'Kanafeh' ,restaurant_id: ugarit.id)
# fattoush = Dish.create!(name:'Fattoush' ,restaurant_id: ugarit.id)
# manakish = Dish.create!(name:'Manakish' ,restaurant_id: ugarit.id)

 sha = DishIngredient.create!(dish_id: shawarma.id ,ingredient_id: wheat.id)
 keb = DishIngredient.create!(dish_id: kebab.id ,ingredient_id: beef.id)
 hum = DishIngredient.create!(dish_id: hummus.id ,ingredient_id: sesame.id)
 tab = DishIngredient.create!(dish_id: tabouleh.id ,ingredient_id: walnuts.id)
 sha = DishIngredient.create!(dish_id: kafta.id ,ingredient_id: peanuts.id)
 keb = DishIngredient.create!(dish_id: kanafeh.id ,ingredient_id: pork.id)
 hum = DishIngredient.create!(dish_id: fattoush.id ,ingredient_id: chicken.id)
 tab = DishIngredient.create!(dish_id: manakish.id ,ingredient_id: onion.id)

 # almacen
 # empanadaDeBacalao = Dish.create!(name:'Empanada de bacalao' ,restaurant_id: almacen.id)
 # empanadaSeafood = Dish.create!(name:'Empanada seafood' ,restaurant_id: almacen.id)
 # empanadaSoya = Dish.create!(name:'Empanada soya' ,restaurant_id: almacen.id)
 # empandaDulce = Dish.create!(name:'Empanda dulce' ,restaurant_id: almacen.id)

 car = DishIngredient.create!(dish_id: empanadaDeCarne.id ,ingredient_id: pork.id)
 veg = DishIngredient.create!(dish_id: empanadaVegetal.id ,ingredient_id: celery.id)
 jam = DishIngredient.create!(dish_id: empanadaJamonYQueso.id ,ingredient_id: cheese.id)
 poll = DishIngredient.create!(dish_id: empandaDePollo.id ,ingredient_id: chicken.id)
 bac = DishIngredient.create!(dish_id: empanadaDeBacalao.id ,ingredient_id: cod.id)
 cra = DishIngredient.create!(dish_id: empanadaSeafood.id ,ingredient_id: crab.id)
 soy = DishIngredient.create!(dish_id: empanadaSoya.id ,ingredient_id: soybeans.id)
 dul = DishIngredient.create!(dish_id: empandaDulce.id ,ingredient_id: walnuts.id)

 # tierra
 # tacoPescado = Dish.create!(name:'Taco pescado' ,restaurant_id: tierra.id)
 # tacoSeafood = Dish.create!(name:'Taco seafood' ,restaurant_id: tierra.id)
 # tacoTofu = Dish.create!(name:'Taco tofu' ,restaurant_id: tierra.id)
 # tacoChorizo = Dish.create!(name:'Taco chorizo' ,restaurant_id: tierra.id)

 pas = DishIngredient.create!(dish_id: tacoAlPastor.id ,ingredient_id: pork.id)
 car = DishIngredient.create!(dish_id: tacoCarnitas.id ,ingredient_id: beef.id)
 tveg = DishIngredient.create!(dish_id: tacoVeg.id ,ingredient_id: avocado.id)
 mush = DishIngredient.create!(dish_id: tacoMushroom.id ,ingredient_id: mushrooms.id)
 pes = DishIngredient.create!(dish_id: tacoPescado.id ,ingredient_id: salmon.id)
 pra = DishIngredient.create!(dish_id: tacoSeafood.id ,ingredient_id: prawns.id)
 tof = DishIngredient.create!(dish_id: tacoTofu.id ,ingredient_id: soybeans.id)
 cho = DishIngredient.create!(dish_id: tacoChorizo.id ,ingredient_id: celery.id)

 # dolce
# bufalina = Dish.create!(name:'Bufalina' ,restaurant_id: dolce.id)
# capricciosa = Dish.create!(name:'Capricciosa' ,restaurant_id: dolce.id)
# rustica = Dish.create!(name:'Rustica' ,restaurant_id: dolce.id)
# tonnata = Dish.create!(name:'Tonnata' ,restaurant_id: dolce.id)

pas = DishIngredient.create!(dish_id: margarita.id ,ingredient_id: cheese.id)
car = DishIngredient.create!(dish_id: diavola.id ,ingredient_id: pork.id)
tveg = DishIngredient.create!(dish_id: cuattroStagioni.id ,ingredient_id: onion.id)
mush = DishIngredient.create!(dish_id: cuattroFormaggi.id ,ingredient_id: tomato.id)
buf = DishIngredient.create!(dish_id: bufalina.id ,ingredient_id: cheese.id)
pri = DishIngredient.create!(dish_id: capricciosa.id ,ingredient_id: tomato.id)
rus = DishIngredient.create!(dish_id: rustica.id ,ingredient_id: pork.id)
nat = DishIngredient.create!(dish_id: tonnata.id ,ingredient_id: tuna.id)


#world
# alooGobi = Dish.create!(name:'Aloo Gobi' ,restaurant_id: world.id)
# chanaMasala = Dish.create!(name:'Chana Masala' ,restaurant_id: world.id)
# palak = Dish.create!(name:'Palak' ,restaurant_id: world.id)
# butterChicken = Dish.create!(name:'Butter Chicken' ,restaurant_id: world.id)

dhl = DishIngredient.create!(dish_id: dhal.id ,ingredient_id: prawns.id)
tik = DishIngredient.create!(dish_id: tikkaMasala.id ,ingredient_id: tomato.id)
pak = DishIngredient.create!(dish_id: pakoras.id ,ingredient_id: onion.id)
kor = DishIngredient.create!(dish_id: korma.id ,ingredient_id: milk.id)
dhl = DishIngredient.create!(dish_id: alooGobi.id ,ingredient_id: salmon.id)
tik = DishIngredient.create!(dish_id: chanaMasala.id ,ingredient_id: celery.id)
pak = DishIngredient.create!(dish_id: palak.id ,ingredient_id: onion.id)
kor = DishIngredient.create!(dish_id: butterChicken.id ,ingredient_id: chicken.id)

# koby
# hamburger = Dish.create!(name:'Hamburger' ,restaurant_id: koby.id)
# cheeseburger = Dish.create!(name:'Cheeseburger' ,restaurant_id: koby.id)
# veggiburger = Dish.create!(name:'Veggiburger' ,restaurant_id: koby.id)
# chickenburger = Dish.create!(name:'Chickenburger' ,restaurant_id: koby.id)
# fishburger = Dish.create!(name:'Fishburger' ,restaurant_id: koby.id)
# seafoodburger = Dish.create!(name:'Seafoodburger' ,restaurant_id: koby.id)
# tofuburger = Dish.create!(name:'Tofuburger' ,restaurant_id: koby.id)
# carrotburger = Dish.create!(name:'Carrotburger' ,restaurant_id: koby.id)

ham = DishIngredient.create!(dish_id: hamburger.id ,ingredient_id: wheat.id)
che = DishIngredient.create!(dish_id: cheeseburger.id ,ingredient_id: cheese.id)
veb = DishIngredient.create!(dish_id: veggiburger.id ,ingredient_id: mustard.id)
chb = DishIngredient.create!(dish_id: chickenburger.id ,ingredient_id: tomato.id)
fib = DishIngredient.create!(dish_id: fishburger.id ,ingredient_id: cod.id)
seb = DishIngredient.create!(dish_id: seafoodburger.id ,ingredient_id: prawns.id)
tob = DishIngredient.create!(dish_id: tofuburger.id ,ingredient_id: soybeans.id)
catb = DishIngredient.create!(dish_id: carrotburger.id ,ingredient_id: egg.id)

# tomodachi
# nigriri = Dish.create!(name:'Nigriri' ,restaurant_id: tomodachi.id)
# maki = Dish.create!(name:'Maki' ,restaurant_id: tomodachi.id)
# uramaki = Dish.create!(name:'Uramaki' ,restaurant_id: tomodachi.id)
# temaki = Dish.create!(name:'Temaki' ,restaurant_id: tomodachi.id)
# gunkan = Dish.create!(name:'Gunkan' ,restaurant_id: tomodachi.id)
# futomaki = Dish.create!(name:'Futomaki' ,restaurant_id: tomodachi.id)
# sashimi = Dish.create!(name:'Sashimi' ,restaurant_id: tomodachi.id)
# inari = Dish.create!(name:'Inari' ,restaurant_id: tomodachi.id)

pas = DishIngredient.create!(dish_id: nigriri.id ,ingredient_id: soybeans.id)
car = DishIngredient.create!(dish_id: maki.id ,ingredient_id: tuna.id)
tveg = DishIngredient.create!(dish_id: uramaki.id ,ingredient_id: crab.id)
mush = DishIngredient.create!(dish_id: temaki.id ,ingredient_id: salmon.id)
gut = DishIngredient.create!(dish_id: gunkan.id ,ingredient_id: soybeans.id)
fut = DishIngredient.create!(dish_id: futomaki.id ,ingredient_id: tuna.id)
sash = DishIngredient.create!(dish_id: sashimi.id ,ingredient_id: crab.id)
ina = DishIngredient.create!(dish_id: inari.id ,ingredient_id: salmon.id)

# piadina
# vongole = Dish.create!(name:'Vongole' ,restaurant_id: piadina.id)
# spagettiAlPesto = Dish.create!(name:'Spagetti al pesto' ,restaurant_id: piadina.id)
# carbonara = Dish.create!(name:'Carbonara' ,restaurant_id: piadina.id)
# pastaNorma = Dish.create!(name:'Pasta Norma' ,restaurant_id: piadina.id)
# aglio = Dish.create!(name:'Aglio' ,restaurant_id: piadina.id)
# parmigiana = Dish.create!(name:'Parmigiana' ,restaurant_id: piadina.id)
# provolone = Dish.create!(name:'Provolone' ,restaurant_id: piadina.id)
# pastaAlaTonna = Dish.create!(name:'Pasta ala tonna' ,restaurant_id: piadina.id)

von = DishIngredient.create!(dish_id: vongole.id ,ingredient_id: clams.id)
spa = DishIngredient.create!(dish_id: spagettiAlPesto.id ,ingredient_id: pinenuts.id)
car = DishIngredient.create!(dish_id: carbonara.id ,ingredient_id: egg.id)
pno = DishIngredient.create!(dish_id: pastaNorma.id ,ingredient_id: eggplant.id)
agi = DishIngredient.create!(dish_id: aglio.id ,ingredient_id: cheese.id)
parm = DishIngredient.create!(dish_id: parmigiana.id ,ingredient_id: eggplant.id)
prov = DishIngredient.create!(dish_id: provolone.id ,ingredient_id: cheese.id)
paton = DishIngredient.create!(dish_id: pastaAlaTonna.id ,ingredient_id: tuna.id)

# yoma
# kungPaoChicken = Dish.create!(name:'Kung Pao Chicken' ,restaurant_id: yoma.id)
# dumplings = Dish.create!(name:'Dumplings' ,restaurant_id: yoma.id)
# cantoneseDimSum = Dish.create!(name:'Cantonese Dim Sum' ,restaurant_id: yoma.id)
# charSiu = Dish.create!(name:'Char Siu' ,restaurant_id: yoma.id)
# sweetAndSourPork = Dish.create!(name:'Sweet and sour pork' ,restaurant_id: yoma.id)
# hotPot = Dish.create!(name:'Hot Pot' ,restaurant_id: yoma.id)
# dimSum = Dish.create!(name:'Dim Sum' ,restaurant_id: yoma.id)
# maPoTofu = Dish.create!(name:'Ma Po Tofu' ,restaurant_id: yoma.id)

kun = DishIngredient.create!(dish_id: kungPaoChicken.id ,ingredient_id: chicken.id)
dum = DishIngredient.create!(dish_id: dumplings.id ,ingredient_id: wheat.id)
can = DishIngredient.create!(dish_id: cantoneseDimSum.id ,ingredient_id: peanuts.id)
swe = DishIngredient.create!(dish_id: sweetAndSourPork.id ,ingredient_id: walnuts.id)
kun = DishIngredient.create!(dish_id: charSiu.id ,ingredient_id: salmon.id)
dum = DishIngredient.create!(dish_id: hotPot.id ,ingredient_id: tuna.id)
can = DishIngredient.create!(dish_id: dimSum.id ,ingredient_id: crab.id)
swe = DishIngredient.create!(dish_id: maPoTofu.id ,ingredient_id: soybeans.id)

# shannin
# cousCousVegetal = Dish.create!(name:'Cous-Cous Vegetal' ,restaurant_id: shannin.id)
# kafta = Dish.create!(name:'Kafta' ,restaurant_id: shannin.id)
# xixTawuk = Dish.create!(name:'Xix Tawuk' ,restaurant_id: shannin.id)
# kebe = Dish.create!(name:'Kebe' ,restaurant_id: shannin.id)
# manakish = Dish.create!(name:'Manakish' ,restaurant_id: shannin.id)
# yabrak = Dish.create!(name:'Yabrak' ,restaurant_id: shannin.id)
# sheikhAlMahshi = Dish.create!(name:'Sheikh Al Mahshi' ,restaurant_id: shannin.id)
# melehi = Dish.create!(name:'Melehi' ,restaurant_id: shannin.id)

cou = DishIngredient.create!(dish_id: cousCousVegetal.id ,ingredient_id: celery.id)
kaf = DishIngredient.create!(dish_id: kafta.id ,ingredient_id: pork.id)
xix = DishIngredient.create!(dish_id: xixTawuk.id ,ingredient_id: wheat.id)
keb = DishIngredient.create!(dish_id: kebe.id ,ingredient_id: duck.id)
kis = DishIngredient.create!(dish_id: manakish.id ,ingredient_id: milk.id)
brak = DishIngredient.create!(dish_id: yabrak.id ,ingredient_id: chicken.id)
alma = DishIngredient.create!(dish_id: sheikhAlMahshi.id ,ingredient_id: duck.id)
mele = DishIngredient.create!(dish_id: melehi.id ,ingredient_id: onion.id)

puts "#{DishIngredient.all.count} dish ingredient created"

puts "seeds are done!"
