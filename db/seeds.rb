# Reset
User.delete_all
PrefCat.delete_all
PrefBorough.delete_all
Course.delete_all
Restaurant.delete_all


# catégories de restos et de quarties

pref_cat_attributes = [
{category: "Japonais", label:"japonais"},
{category: "Thailandais", label:"thai"},
{category: "Vietnamien", label: "viet"},
{category: "Chinois", label:"chinois"},
{category: "Russe", label: "russe"},
{category: "Europe Centrale", label: "europe_centrale"},
{category: "Italien", label: "italien"},
{category: "Cuisine Française", label: "francais"},
{category: "Méditéranéen", label:"med"},
{category: "Mexicain", label:"mexicain"},
{category: "Argentin", label: "argentin"},
{category: "Péruvien", label:"peruvien"},
{category: "Burgers", label:"burger"},
{category: "Original", label:"original"},
]

pref_borough_attributes = [
{borough: "Bastille", label:"bastille"},
{borough: "Notre-Dame", label:"notredame"},
{borough: "Marais", label:"marais"},
{borough: "Villette", label:"villette"},
{borough: "Abbesses", label:"abbesses"},
{borough: "Odéon",label:"odeon"},
{borough: "Saint-Germain",label:"saintgermain"},
{borough: "Trocadéro",label:"trocadero"},
{borough: "Quartier Latin", label:"quartierlatin"},
{borough: "République",label:"republique"},
{borough: "Montmartre", label:"montmartre"},
{borough: "Tour Eiffel", label:"tour"},
{borough: "Champs-Elysées",label:"champs"}]



restaurant_attributes = [
  {
    name: "Beijing 8",
    address: "21 rue de la Boetie 75008 Paris, France",
    zip_code: "75008",
    city: "Paris",
    borough: "Champs-Elysées",
    borough_label: "champs",
    category: "Chinois",
    cat_label: "chinois",
    price_min: 10,
    price_max: 20,
    description: "Concept  basé sur une restauration rapide et de qualité. Beijing 8 propose une gamme de dim sum et de thés dans une ambiance contemporaine et urbaine. Association de recettes ancestrales chinoises à des valeurs de développement durable.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    picture: "https://images.unsplash.com/reserve/oHPXcFZQ9SyeGD5F7T1g_ramenya.jpg?q=80&fm=jpg&s=92509ecd9a51138caebd5a0a77dba3c0",
    opening: 20150901
  },
  {
    name: "Les Fables de la Fontaine",
    address: "131 rue Saint Dominique 75007 Paris, France",
    zip_code: "75007",
    city: "Paris",
    borough: "Tour Eiffel",
    borough_label: "tour",
    category: "Cuisine Française",
    cat_label: "francais",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    picture: "https://images.unsplash.com/photo-1426259759666-68da5c54402d?q=80&fm=jpg&s=5fa8cad7a9333b2e1a46f4174fa88dc5",
    opening: 20150801
  },
  {
    name: "Biiim!",
    address: "5 quai de Loire 75019 Paris, France",
    zip_code: "75019",
    city: "Paris",
    borough: "La Vilette",
    borough_label: "villette",
    category: "Burgers",
    cat_label:"burger",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    picture: "https://images.unsplash.com/photo-1416453072034-c8dbfa2856b5?q=80&fm=jpg&s=cbea81b9705e4553fbb2d7681aa5731e",
    opening: 20150801
  },
    {
    name: "NA/NA",
    address: "10, rue Bréguet 75011 Paris, France",
    zip_code: "75011",
    city: "Paris",
    borough: "Champs-Elysées",
    borough_label: "champs",
    category: "Original",
    cat_label:"original",
    price_min: 10,
    price_max: 20,
    description: "Du matin au soir, les trois supers NANA, vous proposent des produits frais, de qualité et de saison. Un petit coin de calme et de fraicheur, au centre du quartier animé de Bastille",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    picture: "https://unsplash.com/photos/WIJPPnoVrDs/download",
    opening: 20150801
  },
  {
    name: "Fagio",
    address: "72, rue de Rochechouart 75009 Paris, France",
    zip_code: "75009",
    city: "Paris",
    borough: "Tour Eiffel",
    borough_label: "tour",
    category: "Cuisine Française",
    cat_label: "francais",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    picture: "https://unsplash.com/photos/LY9GKi4xllY/download",
    opening: 20150801
  },
  {
    name: "750g la table",
    address: "397 rue de Vaugirard 75015 Paris, France",
    zip_code: "75015",
    city: "Paris",
    borough: "La Vilette",
    borough_label: "villette",
    category: "Original",
    cat_label: "original",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    picture: "https://unsplash.com/photos/4vr9a_sdJ78/download",
    opening: 20150801
  },
  {
    name: "Clasico Argentino",
    address: "Passage des Panoramas 75002 Paris, France",
    zip_code: "75002",
    city: "Paris",
    borough: "Champs-Elysées",
    borough_label: "champs",
    category: "Argentin",
    cat_label:"argentin",
    price_min: 10,
    price_max: 20,
    description: "Concept  basé sur une restauration rapide et de qualité. Beijing 8 propose une gamme de dim sum et de thés dans une ambiance contemporaine et urbaine. Association de recettes ancestrales chinoises à des valeurs de développement durable.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    picture: "https://unsplash.com/photos/6gcc9Z4pgWY/download",
    opening: 20150801
  },
  {
    name: "Gabilou",
    address: "15 rue d'Armaillé 75017 Paris, France",
    zip_code: "75017",
    city: "Paris",
    borough: "Tour Eiffel",
    borough_label: "tour",
    category: "Original",
    cat_label: "original",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    picture: "https://unsplash.com/photos/MtqG1lWcUw0/download",
    opening: 20150801
  },
  {
    name: "Desiroad!",
    address: "14 rue Dauphine 75006 Paris, France",
    zip_code: "75006",
    city: "Paris",
    borough: "La Vilette",
    borough_label: "villette",
    category: "Original",
    cat_label: "original",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    picture: "https://unsplash.com/photos/4qJdtfJ2MmQ/download",
    opening: 20150801
  },
  {
    name: "Le Refectoire",
    address: "31 Rue du château d'eau 75010 Paris, France",
    zip_code: "75010",
    city: "Paris",
    borough: "Champs-Elysées",
    borough_label: "champs",
    category: "Burger",
    cat_label: "burger",
    price_min: 10,
    price_max: 20,
    description: "Concept  basé sur une restauration rapide et de qualité. Beijing 8 propose une gamme de dim sum et de thés dans une ambiance contemporaine et urbaine. Association de recettes ancestrales chinoises à des valeurs de développement durable.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    picture: "https://unsplash.com/photos/jivmv9hE6bM/download",
    opening: 20150801
  },
  {
    name: "Gallika",
    address: "7 rue Godot de Mauroy 75008 Paris, France",
    zip_code: "75008",
    city: "Paris",
    borough: "Tour Eiffel",
    borough_label: "tour",
    category: "Cuisine Française",
    cat_label: "francais",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    picture: "https://unsplash.com/photos/y3aP9oo9Pjc/download",
    opening: 20150701
  },
  {
    name: "Nomos",
    address: "15 rue André del Sarte 75018 Paris, France",
    zip_code: "75018",
    city: "Paris",
    borough: "La Vilette",
    borough_label: "villette",
    category: "Original",
    cat_label: "original",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    picture: "https://unsplash.com/photos/dfItZYL3qI0/download",
    opening: 20150701
  },
  {
    name: "Le Bat",
    address: "16 bis, boulevard Montmartre 75009 Paris, France",
    zip_code: "75009",
    city: "Paris",
    borough: "Champs-Elysées",
    borough_label: "champs",
    category: "Cuisine Française",
    cat_label: "francais",
    price_min: 10,
    price_max: 20,
    description: "Concept  basé sur une restauration rapide et de qualité. Beijing 8 propose une gamme de dim sum et de thés dans une ambiance contemporaine et urbaine. Association de recettes ancestrales chinoises à des valeurs de développement durable.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    picture: "https://unsplash.com/photos/N_Y88TWmGwA/download",
    opening: 20150701
  },
  {
    name: "Les Fables de la Fontaine",
    address: "2 rue Auguste Vacquerie 75016 Paris, France",
    zip_code: "75016",
    city: "Paris",
    borough: "Tour Eiffel",
    borough_label: "tour",
    category: "Japonais",
    cat_label: "japonais",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    picture: "https://unsplash.com/photos/-nBw28ei-OE/download",
    opening: 20150701
  },
  {
    name: "Season",
    address: "1 rue Charles Francois Dupuis 75003 Paris, France",
    zip_code: "75003",
    city: "Paris",
    borough: "La Villette",
    borough_label: "villette",
    category: "Cuisine Française",
    cat_label: "francais",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    picture: "https://unsplash.com/photos/o58cEDAnPB8/download",
    opening: 20150701
  }
]

user_attributes = [
  {
    email: "guillaume.charpin@gmail.com",
    first_name: "Guillaume",
    last_name: "Charpin",
    password: "topsecret",
    password_confirmation: "topsecret",
    picture: 'http://cfa-esrpc.fr/images/medias/photo/portrait-2_1391597193142-jpg',
    owner: true,
    restaurant_id: 1
  },
  {
    email: "gaspard.aubert@gmail.com",
    first_name: "Gaspard",
    last_name: "Aubert",
    password: "topsecret",
    password_confirmation: "topsecret",
    owner: false,
    picture: 'http://createyourownphotoblog.com/wp-content/uploads/2014/11/IMG_1977-Version-3.jpg'
  },
  {
    email: "hermione@granger.com",
    first_name: "Hermione",
    last_name: "Granger",
    password: "topsecret",
    password_confirmation: "topsecret",
    owner: false,
  },
    {
    email: "randy@marsh.com",
    first_name: "Randy",
    last_name: "Marsh",
    password: "topsecret",
    password_confirmation: "topsecret",
    owner: true,
    restaurant_id: 2
  },
  {
    email: "eric@cartman.com",
    first_name: "Eric",
    last_name: "Cartman",
    password: "topsecret",
    password_confirmation: "topsecret",
    owner: true,
    restaurant_id: 3
  },
  {
    email: "towelie@towel.com",
    first_name: "towelie",
    last_name: "towel",
    password: "topsecret",
    password_confirmation: "topsecret",
    owner: true,
    restaurant_id: 4
  }
]

course_attributes = [

  {
    category: "Plat",
    name: "Plat du chef",
    description: "Demandez en cuisine",
    price: 12,


  },
  {
    category: "Entrée",
    name: "Bisque de homard",
    description: " et son émulsion de poireaux",
    price: 12,


  },
   {
    category: "Plat",
    name: "Dos de cabillaud",
    description: "fondant aux herbes avec sa purée de haddock fumé",
    price: 27,


  },
   {
    category: "Dessert",
    name: "Fraisier",
    description: "du chef aux pistaches d'Oman et baies de Kerala",
    price: 11,


  },

    {
    category: "Entrée",
    name: "Vittelo tonatto",
    description: "au poivre de Sichuan",
    price: 12,


  },

   {
    category: "Dessert",
    name: "Paris Brest, en passant par Palerme",
    description: "Rouleau sicilien fourré revisité par notre traditionnel Paris Brest",
    price: 11,


  },

    {
    category: "Entrée",
    name: "Bisque de homard",
    description: "Bisque de homard et son émulsion de poireaux",
    price: 12,


  },
   {
    category: "Plat",
    name: "Ris de veau à l'Indonésienne",
    description: "accompagné d'un Nasi Goreng de Surabaya",
    price: 27,


  },
   {
    category: "Dessert",
    name: "Tiramisu rouge",
    description: "aux fraises et framboises du verger",
    price: 11,


  }
]

# build borough and restaurant categories

pref_cat_attributes.each do |attribute|
  PrefCat.create(attribute)
end

pref_borough_attributes.each do |attribute|
  PrefBorough.create(attribute)
end

user_attributes.each do |attribute|
  User.create(attribute)
end

# array that allows to iterate on restaurants
restaurant_array = []

restaurant_attributes.each do |attribute|
  restaurant = Restaurant.create(attribute)
  restaurant_array << restaurant
end


#Create courses and assign them to restaurants

restaurant_array.each do |restaurant|
  course_attributes.each do |attribute|
      course = Course.new(attribute)
      course.restaurant = restaurant
      course.save!
    end
end


# restaurant_array.each do |restaurant|
#     course = Course.create(attribute[0])
#     course.restaurant_id = restaurant.id
# end




# require 'nokogiri'
# require 'open-uri'

# URL = "http://fr.newtable.com/restaurants-paris.php"

# @doc = Nokogiri::HTML(open(URL))


# def parse(css)
#   elements = []
#   @doc.css("#{css}").each_with_index do |element, index|
#     elements << element.text
#     break if index > 20
#   end
#   elements
# end

# def parse_url(css, attribute)
#   urls = []
#   @doc.css("#{css}").each_with_index do |link, index|
#     urls << link["#{attribute}"]
#     break if index > 20
#   end
#   urls
# end

# # Finding specific infos for each restaurant
# def find_restaurant_infos
#   elements = []
#   hrefs = parse_url('a.image', 'href')
#   hrefs.each_with_index do |href, index|
#     @doc = Nokogiri::HTML(open("http://fr.newtable.com/#{href}"))
#     elements << @doc.css('.encart').text.gsub(/\t/, "")
#   end
#   elements
# end

# # Calling the scraper functions
# names = parse('p.lite-title a')
# urls = parse_url('a.image img', 'src')
# categories = parse('span.categorie')
# infos = find_restaurant_infos

# # Creating an array with the found infos
# prout = []
# names.each_with_index do |name, index|
#   prout << [name, urls[index], categories[index], infos[index]]
# end

# p prout


