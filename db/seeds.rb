pref_cat_attributes = [
{category: "Japonais"},
{category: "Thailandais"},
{category: "Vietnamien"},
{category: "Chinois"},
{category: "Russe"},
{category: "Europe Centrale"},
{category: "Italien"},
{category: "Français"},
{category: "Méditéranéen"},
{category: "Mexicain"},
{category: "Argentin"},
{category: "Péruvien"}]

pref_borough_attributes = [
{borough: "Bastille"},
{borough: "Notre-Dame"},
{borough: "Marais"},
{borough: "Villette"},
{borough: "Abbesses"},
{borough: "Odéon"},
{borough: "Saint-Germain"},
{borough: "Trocadéro"},
{borough: "Quartier Latin"},
{borough: "République"},
{borough: "Montmartre"},
{borough: "Champs-Elysées"}]


pref_cat_attributes.each do |attribute|
  PrefCat.create(attribute)
end

pref_borough_attributes.each do |attribute|
  PrefBorough.create(attribute)
end



restaurant_attributes = [
  {
    name: "Beijing 8",
    address: "21 rue de la Boetie 75008 Paris, France",
    zip_code: "75008",
    city: "Paris",
    borough: "Champs-Elysées",
    category: "Chinois",
    price_min: 10,
    price_max: 20,
    description: "Concept  basé sur une restauration rapide et de qualité. Beijing 8 propose une gamme de dim sum et de thés dans une ambiance contemporaine et urbaine. Association de recettes ancestrales chinoises à des valeurs de développement durable.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    seed_picture: "https://images.unsplash.com/reserve/oHPXcFZQ9SyeGD5F7T1g_ramenya.jpg?q=80&fm=jpg&s=92509ecd9a51138caebd5a0a77dba3c0",
    opening: 20150901
  },
  {
    name: "Les Fables de la Fontaine",
    address: "131 rue Saint Dominique 75007 Paris, France",
    zip_code: "75007",
    city: "Paris",
    borough: "Tour Eiffel",
    category: "Cuisine Française",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    seed_picture: "https://images.unsplash.com/photo-1426259759666-68da5c54402d?q=80&fm=jpg&s=5fa8cad7a9333b2e1a46f4174fa88dc5",
    opening: 20150801
  },
  {
    name: "Biiim!",
    address: "5 quai de Loire 75019 Paris, France",
    zip_code: "75019",
    city: "Paris",
    borough: "La Vilette",
    category: "Burgers",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    seed_picture: "https://images.unsplash.com/photo-1416453072034-c8dbfa2856b5?q=80&fm=jpg&s=cbea81b9705e4553fbb2d7681aa5731e",
    opening: 20150801
  },
    {
    name: "NA/NA",
    address: "10, rue Bréguet 75011 Paris, France",
    zip_code: "75011",
    city: "Paris",
    borough: "Champs-Elysées",
    category: "Original",
    price_min: 10,
    price_max: 20,
    description: "Du matin au soir, les trois supers NANA, vous proposent des produits frais, de qualité et de saison. Un petit coin de calme et de fraicheur, au centre du quartier animé de Bastille",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    seed_picture: "https://unsplash.com/photos/WIJPPnoVrDs/download",
    opening: 20150801
  },
  {
    name: "Fagio",
    address: "72, rue de Rochechouart 75009 Paris, France",
    zip_code: "75009",
    city: "Paris",
    borough: "Tour Eiffel",
    category: "Cuisine Française",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    seed_picture: "https://unsplash.com/photos/LY9GKi4xllY/download",
    opening: 20150801
  },
  {
    name: "750g la table",
    address: "397 rue de Vaugirard 75015 Paris, France",
    zip_code: "75015",
    city: "Paris",
    borough: "La Vilette",
    category: "Terrasse",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    seed_picture: "https://unsplash.com/photos/4vr9a_sdJ78/download",
    opening: 20150801
  },
  {
    name: "Clasico Argentino",
    address: "Passage des Panoramas 75002 Paris, France",
    zip_code: "75002",
    city: "Paris",
    borough: "Champs-Elysées",
    category: "Argentin",
    price_min: 10,
    price_max: 20,
    description: "Concept  basé sur une restauration rapide et de qualité. Beijing 8 propose une gamme de dim sum et de thés dans une ambiance contemporaine et urbaine. Association de recettes ancestrales chinoises à des valeurs de développement durable.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    seed_picture: "https://unsplash.com/photos/6gcc9Z4pgWY/download",
    opening: 20150801
  },
  {
    name: "Gabilou",
    address: "15 rue d'Armaillé 75017 Paris, France",
    zip_code: "75017",
    city: "Paris",
    borough: "Tour Eiffel",
    category: "Contemporain",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    seed_picture: "https://unsplash.com/photos/MtqG1lWcUw0/download",
    opening: 20150801
  },
  {
    name: "Desiroad!",
    address: "14 rue Dauphine 75006 Paris, France",
    zip_code: "75006",
    city: "Paris",
    borough: "La Vilette",
    category: "Original",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    seed_picture: "https://unsplash.com/photos/4qJdtfJ2MmQ/download",
    opening: 20150801
  },
  {
    name: "Le Refectoire",
    address: "31 Rue du château d'eau 75010 Paris, France",
    zip_code: "75010",
    city: "Paris",
    borough: "Champs-Elysées",
    category: "Burger",
    price_min: 10,
    price_max: 20,
    description: "Concept  basé sur une restauration rapide et de qualité. Beijing 8 propose une gamme de dim sum et de thés dans une ambiance contemporaine et urbaine. Association de recettes ancestrales chinoises à des valeurs de développement durable.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    seed_picture: "https://unsplash.com/photos/jivmv9hE6bM/download",
    opening: 20150801
  },
  {
    name: "Gallika",
    address: "7 rue Godot de Mauroy 75008 Paris, France",
    zip_code: "75008",
    city: "Paris",
    borough: "Tour Eiffel",
    category: "Cuisine Française",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    seed_picture: "https://unsplash.com/photos/y3aP9oo9Pjc/download",
    opening: 20150701
  },
  {
    name: "Nomos",
    address: "15 rue André del Sarte 75018 Paris, France",
    zip_code: "75018",
    city: "Paris",
    borough: "La Vilette",
    category: "Bobo",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    seed_picture: "https://unsplash.com/photos/dfItZYL3qI0/download",
    opening: 20150701
  },
  {
    name: "Le Bat",
    address: "16 bis, boulevard Montmartre 75009 Paris, France",
    zip_code: "75009",
    city: "Paris",
    borough: "Champs-Elysées",
    category: "Terrasse",
    price_min: 10,
    price_max: 20,
    description: "Concept  basé sur une restauration rapide et de qualité. Beijing 8 propose une gamme de dim sum et de thés dans une ambiance contemporaine et urbaine. Association de recettes ancestrales chinoises à des valeurs de développement durable.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    seed_picture: "https://unsplash.com/photos/N_Y88TWmGwA/download",
    opening: 20150701
  },
  {
    name: "Les Fables de la Fontaine",
    address: "2 rue Auguste Vacquerie 75016 Paris, France",
    zip_code: "75016",
    city: "Paris",
    borough: "Tour Eiffel",
    category: "Japonais",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    seed_picture: "https://unsplash.com/photos/-nBw28ei-OE/download",
    opening: 20150701
  },
  {
    name: "Season",
    address: "1 rue Charles Francois Dupuis 75003 Paris, France",
    zip_code: "75003",
    city: "Paris",
    borough: "La Vilette",
    category: "Cuisine française",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    seed_picture: "https://unsplash.com/photos/o58cEDAnPB8/download",
    opening: 20150701
  }
]

user_attributes = [
  {
    email: "harry@potter.com",
    first_name: "Harry",
    last_name: "Potter",
    password: "topsecret",
    password_confirmation: "topsecret",
    owner: true,
    restaurant_id: 1
  },
  {
    email: "ron@weasley.com",
    first_name: "Ron",
    last_name: "Weasley",
    password: "topsecret",
    password_confirmation: "topsecret",
    owner: false,
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

user_attributes.each do |attribute|
  User.create(attribute)
end

restaurant_attributes.each do |attribute|
  Restaurant.create(attribute)
end

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
