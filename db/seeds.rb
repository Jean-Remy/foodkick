restaurant_attributes = [
  {
    name: "Beijing 8",
    address: "21 rue de la Boetie",
    zip_code: "75008",
    city: "Paris",
    borough: "Champs-Elysées",
    category: "Chinois",
    price_min: 10,
    price_max: 20,
    description: "Concept  basé sur une restauration rapide et de qualité. Beijing 8 propose une gamme de dim sum et de thés dans une ambiance contemporaine et urbaine. Association de recettes ancestrales chinoises à des valeurs de développement durable.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un menu.",
    seed_picture: "https://images.unsplash.com/reserve/oHPXcFZQ9SyeGD5F7T1g_ramenya.jpg?q=80&fm=jpg&s=92509ecd9a51138caebd5a0a77dba3c0"
  },
  {
    name: "Les Fables de la Fontaine",
    address: "131 rue Saint Dominique",
    zip_code: "75007",
    city: "Paris",
    borough: "Tour Eiffel",
    category: "Cuisine Française",
    price_min: 40,
    price_max: 70,
    description: "Les Fables de la Fontaine; restaurant 1* au Michelin; se sont offertes une beauté. Nouveau décor, nouvelle chef et baisse des prix à la carte. Ce restaurant crée il y plus de 15 ans par le grand chef Christian Constant, offre un choix d’excellence sur les poissons et fruits de mers, il est très vite devenu un des acteurs gourmands de la Rue Saint Dominique. La chef Julia Sedefdjian, reprend aujourd'hui les commandes de la cuisine.",
    discount: 0.2,
    discount_detail: "Remise valable sur l'ensemble de la carte",
    seed_picture: "https://images.unsplash.com/photo-1426259759666-68da5c54402d?q=80&fm=jpg&s=5fa8cad7a9333b2e1a46f4174fa88dc5"
  },
  {
    name: "Biiim!",
    address: "5 quai de Loire",
    zip_code: "75019",
    city: "Paris",
    borough: "La Vilette",
    category: "Burgers",
    price_min: 15,
    price_max: 30,
    description: "Au bord du Canal de l'Ourcq, le nouveaux spot à burger, avant ou après une séance ciné, le resto biiim propose des produits frais et de qualité.",
    discount: 0.2,
    discount_detail: "Remise valable pour l'achat d'un burger.",
    seed_picture: "https://images.unsplash.com/photo-1416453072034-c8dbfa2856b5?q=80&fm=jpg&s=cbea81b9705e4553fbb2d7681aa5731e"
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
  }

]

restaurant_attributes.each { |params| Restaurant.create(params)}
user_attributes.each { |params| User.create(params)}
