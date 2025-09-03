#sqlite
DROP TABLE IF EXISTS animal;

CREATE TABLE animal (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  age TEXT NOT NULL,
  breed TEXT NOT NULL,
  type TEXT NOT NULL, 
  city TEXT NOT NULL, 
  zipcode TEXT NOT NULL, 
  description TEXT NOT NULL, 
  imageUrl TEXT NOT NULL
);


-- ========================
-- 25 CHIENS
-- ========================

INSERT INTO animal (name, age, breed, type, city, zipcode, description, imageUrl) VALUES

(
  "Oscar",
  "7 ans",
  "Labrador",
  "Chien",
  "Rennes",
  "35000",
  "Oscar est un chien calme et affectueux, parfait pour une famille avec enfants.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Bella",
  "3 ans",
  "Border Collie",
  "Chien",
  "Nantes",
  "44000",
  "Bella est vive et intelligente, elle adore apprendre de nouveaux tours et jouer au frisbee.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Max",
  "2 ans",
  "Berger Allemand",
  "Chien",
  "Paris",
  "75000",
  "Max est loyal et protecteur, un compagnon idéal pour la vie de famille.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Daisy",
  "4 ans",
  "Golden Retriever",
  "Chien",
  "Toulouse",
  "31000",
  "Daisy adore l’eau et les grandes promenades. C’est une chienne douce et gentille.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Rocky",
  "1 an",
  "Beagle",
  "Chien",
  "Marseille",
  "13000",
  "Rocky est un petit chien curieux et joueur, toujours prêt pour l’aventure.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Milo",
  "6 ans",
  "Teckel",
  "Chien",
  "Nice",
  "06000",
  "Milo est courageux et malin, il aime se blottir sous les couvertures.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Lola",
  "8 mois",
  "Cocker Spaniel",
  "Chien",
  "Montpellier",
  "34000",
  "Lola est pleine d’énergie et adore courir dans les parcs.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Zeus",
  "5 ans",
  "Husky Sibérien",
  "Chien",
  "Lille",
  "59000",
  "Zeus est majestueux et adore courir. Idéal pour une famille sportive.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Ruby",
  "2 ans",
  "Samoyède",
  "Chien",
  "Chamonix",
  "74400",
  "Ruby est une boule de neige pleine d’amour ! Elle adore les promenades et les câlins par temps frais.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Toby",
  "9 ans",
  "Bulldog Anglais",
  "Chien",
  "Bordeaux",
  "33000",
  "Toby est un chien tranquille, il aime surtout les siestes et les câlins.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Maya",
  "3 ans",
  "Shiba Inu",
  "Chien",
  "Lyon",
  "69000",
  "Maya est indépendante mais très affectueuse avec ses proches.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Simba",
  "2 ans",
  "Rottweiler",
  "Chien",
  "Rouen",
  "76000",
  "Simba est protecteur et courageux, il demande un maître attentif et patient.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Chanel",
  "1 an",
  "Caniche",
  "Chien",
  "Angers",
  "49000",
  "Chanel est élégante et vive, elle aime être au centre de l’attention.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Thor",
  "6 ans",
  "Doberman",
  "Chien",
  "Strasbourg",
  "67000",
  "Thor est un chien intelligent et loyal, parfait pour la garde comme pour la compagnie.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Sally",
  "4 ans",
  "Bichon Maltais",
  "Chien",
  "Dijon",
  "21000",
  "Sally adore les câlins et s’entend très bien avec les enfants.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Lucky",
  "5 ans",
  "Dalmatien",
  "Chien",
  "Caen",
  "14000",
  "Lucky est joyeux et adore courir, il a besoin de beaucoup d’exercice.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Gizmo",
  "2 ans",
  "Chihuahua",
  "Chien",
  "Orléans",
  "45000",
  "Gizmo est petit mais plein de caractère. Il aime les genoux et les câlins.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Nina",
  "7 ans",
  "Saint-Bernard",
  "Chien",
  "Grenoble",
  "38000",
  "Nina est douce et protectrice, idéale pour une grande maison à la montagne.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Archie",
  "3 ans",
  "Berger Australien",
  "Chien",
  "Annecy",
  "74000",
  "Archie est joueur, sportif et adore les randonnées.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Jessy",
  "2 ans",
  "Spitz Nain",
  "Chien",
  "Clermont-Ferrand",
  "63000",
  "Jessy est une petite boule de poils vive et affectueuse.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Shadow",
  "4 ans",
  "Akita Inu",
  "Chien",
  "Tours",
  "37000",
  "Shadow est un chien majestueux et calme, attaché à son maître.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Pixie",
  "10 mois",
  "Jack Russell",
  "Chien",
  "Metz",
  "57000",
  "Pixie est vive, malicieuse et adore jouer sans fin.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Apollo",
  "3 ans",
  "Malamute d’Alaska",
  "Chien",
  "Besançon",
  "25000",
  "Apollo est puissant et sportif, il aime les grands espaces.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Moka",
  "5 ans",
  "Shar Pei",
  "Chien",
  "Le Mans",
  "72000",
  "Moka est calme et indépendant, parfait pour une vie paisible.",
  "https://source.unsplash.com/400x300/?dog"
),
(
  "Candy",
  "2 ans",
  "Yorkshire Terrier",
  "Chien",
  "Reims",
  "51100",
  "Candy est petite, joyeuse et adore la compagnie humaine.",
  "https://source.unsplash.com/400x300/?dog"
);


-- ========================
-- 25 CHATS
-- ========================

INSERT INTO animal (name, age, breed, type, city, zipcode, description, imageUrl) VALUES

(
  "Mia",
  "2 ans",
  "Chat européen noir et blanc",
  "Chat",
  "Strasbourg",
  "67000",
  "Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Luna",
  "3 ans",
  "Chat roux",
  "Chat",
  "Bordeaux",
  "33000",
  "Luna adore les coins ensoleillés et les siestes à vos côtés. Regard doux garanti.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Simba",
  "1 an",
  "Maine Coon",
  "Chat",
  "Paris",
  "75000",
  "Simba est joueur et majestueux, il aime grimper et observer la maison d’en haut.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Nala",
  "5 ans",
  "Chartreux",
  "Chat",
  "Lyon",
  "69000",
  "Nala est calme et affectueuse, parfaite pour une vie tranquille.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Charly",
  "4 mois",
  "Chaton tigré",
  "Chat",
  "Toulouse",
  "31000",
  "Charly est une petite boule d’énergie qui court partout et adore jouer.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Pixel",
  "8 mois",
  "Bengal",
  "Chat",
  "Nantes",
  "44000",
  "Pixel est curieux et actif, un compagnon idéal pour une famille joueuse.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Noisette",
  "6 ans",
  "British Shorthair",
  "Chat",
  "Rennes",
  "35000",
  "Noisette est posée et câline, elle aime les canapés et les couvertures.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Zelda",
  "1 an et demi",
  "Sacré de Birmanie",
  "Chat",
  "Nice",
  "06000",
  "Zelda est douce et sociable, elle cherche la présence humaine.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Gaston",
  "7 ans",
  "Bleu Russe",
  "Chat",
  "Lille",
  "59000",
  "Gaston est discret et élégant, un grand amateur de fenêtres ensoleillées.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Minette",
  "3 ans",
  "Européenne tigrée",
  "Chat",
  "Montpellier",
  "34000",
  "Minette est joueuse et câline, parfaite pour un foyer chaleureux.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Sushi",
  "10 mois",
  "Siamois",
  "Chat",
  "Marseille",
  "13000",
  "Sushi est bavard et proche de l’humain, il suit partout ses adoptants.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Félix",
  "9 ans",
  "Persan",
  "Chat",
  "Reims",
  "51100",
  "Félix aime les siestes et les séances de brossage tranquilles.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Gribouille",
  "2 ans",
  "Ragdoll",
  "Chat",
  "Grenoble",
  "38000",
  "Gribouille est ultra affectueux, un vrai chat pot-de-colle.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Olive",
  "1 an",
  "Scottish Fold",
  "Chat",
  "Dijon",
  "21000",
  "Olive est curieuse et douce, elle adore les plumeaux.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Neko",
  "5 mois",
  "Norvégien",
  "Chat",
  "Rouen",
  "76000",
  "Neko est un aventurier en herbe, toujours prêt à explorer.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Romy",
  "4 ans",
  "Européenne tricolore",
  "Chat",
  "Angers",
  "49000",
  "Romy aime la tranquillité et les moments câlins sur le canapé.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Pistache",
  "2 ans",
  "American Shorthair",
  "Chat",
  "Orléans",
  "45000",
  "Pistache est joueuse et s’entend bien avec les enfants.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Gatsby",
  "3 ans",
  "Oriental",
  "Chat",
  "Clermont-Ferrand",
  "63000",
  "Gatsby est élégant et curieux, il aime discuter avec ses humains.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Yuki",
  "8 ans",
  "Sphynx",
  "Chat",
  "Metz",
  "57000",
  "Yuki adore la chaleur et les couvertures, un amour sensible.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Mocha",
  "11 mois",
  "Abyssin",
  "Chat",
  "Caen",
  "14000",
  "Mocha est vif et affectueux, il adore les parcours de jeu.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Nougat",
  "2 ans",
  "Burmese",
  "Chat",
  "Poitiers",
  "86000",
  "Nougat est sociable et gourmand, le roi des séances de jeu.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Poppins",
  "1 an",
  "Exotic Shorthair",
  "Chat",
  "Tours",
  "37000",
  "Poppins est douce et calme, parfaite pour un intérieur cosy.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Oliver",
  "6 ans",
  "British Longhair",
  "Chat",
  "Besançon",
  "25000",
  "Oliver est placide et tendre, il aime se poser près de vous.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Shadow",
  "3 ans",
  "Bombay",
  "Chat",
  "Le Mans",
  "72000",
  "Shadow est joueur et affectueux, il s’attache vite à sa famille.",
  "https://source.unsplash.com/400x300/?cat"
),
(
  "Yara",
  "2 ans",
  "Angora turc",
  "Chat",
  "Annecy",
  "74000",
  "Yara est élégante et douce, toujours partante pour des câlins.",
  "https://source.unsplash.com/400x300/?cat"
);


-- ========================
-- 25 LAPINS
-- ========================

INSERT INTO animal (name, age, breed, type, city, zipcode, description, imageUrl) VALUES
(
  "Coco",
  "1 an",
  "Lapin nain",
  "Lapin",
  "Annecy",
  "74000",
  "Coco est plein d’énergie, très doux et parfait pour un foyer aimant et paisible.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Néo",
  "6 mois",
  "Lapin bélier",
  "Lapin",
  "Lille",
  "59000",
  "Néo est curieux et adore explorer chaque recoin de la maison.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Lola",
  "2 ans",
  "Lapin nain blanc",
  "Lapin",
  "Nantes",
  "44000",
  "Lola est douce et adore être caressée, un vrai petit cœur.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Flocon",
  "8 mois",
  "Lapin nain angora",
  "Lapin",
  "Grenoble",
  "38000",
  "Flocon est joueur et très attachant avec sa petite bouille.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Noisette",
  "3 ans",
  "Lapin bélier",
  "Lapin",
  "Tours",
  "37000",
  "Noisette aime les légumes croquants et les câlins au calme.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Pixel",
  "1 an",
  "Lapin nain gris",
  "Lapin",
  "Strasbourg",
  "67000",
  "Pixel adore sauter partout, un petit compagnon plein de vie.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Luna",
  "4 ans",
  "Lapin géant des Flandres",
  "Lapin",
  "Bordeaux",
  "33000",
  "Luna est calme et majestueuse, idéale pour un foyer tranquille.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Biscotte",
  "2 ans",
  "Lapin tête de lion",
  "Lapin",
  "Paris",
  "75000",
  "Biscotte est douce, câline et adore la compagnie.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Riri",
  "1 an",
  "Lapin nain noir",
  "Lapin",
  "Clermont-Ferrand",
  "63000",
  "Riri est vif et adore jouer avec ses jouets.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Plume",
  "5 ans",
  "Lapin bélier",
  "Lapin",
  "Dijon",
  "21000",
  "Plume aime les longues siestes et les câlins au calme.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Moka",
  "2 ans",
  "Lapin nain brun",
  "Lapin",
  "Orléans",
  "45000",
  "Moka est doux et affectueux, un vrai compagnon fidèle.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Caramel",
  "7 mois",
  "Lapin nain rex",
  "Lapin",
  "Caen",
  "14000",
  "Caramel est un petit gourmand qui aime les câlins.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Eliot",
  "3 ans",
  "Lapin angora",
  "Lapin",
  "Marseille",
  "13000",
  "Eliot adore se faire brosser et se laisse facilement câliner.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Misty",
  "1 an",
  "Lapin nain bleu",
  "Lapin",
  "Lyon",
  "69000",
  "Misty est malicieuse et adore découvrir de nouveaux endroits.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Choco",
  "2 ans",
  "Lapin tête de lion",
  "Lapin",
  "Nice",
  "06000",
  "Choco est affectueux et adore les gratouilles.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Iris",
  "9 mois",
  "Lapin bélier nain",
  "Lapin",
  "Rouen",
  "76000",
  "Iris est douce et calme, idéale pour un foyer tranquille.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Grisou",
  "2 ans",
  "Lapin nain gris",
  "Lapin",
  "Metz",
  "57000",
  "Grisou est vif et aime courir dans le jardin.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Nala",
  "1 an",
  "Lapin bélier",
  "Lapin",
  "Poitiers",
  "86000",
  "Nala est câline et très sociable avec les enfants.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Shadow",
  "3 ans",
  "Lapin nain noir",
  "Lapin",
  "Besançon",
  "25000",
  "Shadow est joueur et aime les longues promenades dans le jardin.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Poppy",
  "2 ans",
  "Lapin nain blanc",
  "Lapin",
  "Le Mans",
  "72000",
  "Poppy adore les caresses et les câlins au calme.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Fleur",
  "4 ans",
  "Lapin angora",
  "Lapin",
  "Chambéry",
  "73000",
  "Fleur est douce et indépendante, parfaite pour un foyer paisible.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Nino",
  "2 ans",
  "Lapin nain brun",
  "Lapin",
  "Reims",
  "51100",
  "Nino est plein d’énergie et adore jouer avec ses maîtres.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Ruby",
  "6 mois",
  "Lapin bélier",
  "Lapin",
  "Angers",
  "49000",
  "Ruby est une petite boule de poils douce et attachante.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Gigi",
  "3 ans",
  "Lapin tête de lion",
  "Lapin",
  "Toulouse",
  "31000",
  "Gigi adore être câlinée et se sent vite en confiance.",
  "https://source.unsplash.com/400x300/?rabbit"
),
(
  "Pistache",
  "1 an",
  "Lapin nain",
  "Lapin",
  "Perpignan",
  "66000",
  "Pistache est vif, joueur et adore grignoter des carottes.",
  "https://source.unsplash.com/400x300/?rabbit"
);

-- ========================
-- 25 RONGEURS
-- ========================

INSERT INTO animal (name, age, breed, type, city, zipcode, description, imageUrl) VALUES
(
  "Biscuit",
  "3 mois",
  "Cochon d'Inde",
  "Rongeur",
  "Tours",
  "37000",
  "Biscuit est petit mais plein de vie ! Il aime les légumes croquants et les câlins en famille.",
  "https://source.unsplash.com/400x300/?guineapig"
),
(
  "Cookie",
  "1 an",
  "Hamster doré",
  "Rongeur",
  "Paris",
  "75000",
  "Cookie adore courir dans sa roue et grignoter des graines.",
  "https://source.unsplash.com/400x300/?hamster"
),
(
  "Noisette",
  "6 mois",
  "Gerbille",
  "Rongeur",
  "Lille",
  "59000",
  "Noisette est vive et curieuse, toujours en mouvement.",
  "https://source.unsplash.com/400x300/?gerbil"
),
(
  "Snow",
  "8 mois",
  "Souris blanche",
  "Rongeur",
  "Bordeaux",
  "33000",
  "Snow est douce et aime la tranquillité d’un foyer calme.",
  "https://source.unsplash.com/400x300/?mouse"
),
(
  "Léo",
  "2 ans",
  "Rat domestique",
  "Rongeur",
  "Nantes",
  "44000",
  "Léo est intelligent, sociable et adore grimper partout.",
  "https://source.unsplash.com/400x300/?rat"
),
(
  "Choco",
  "1 an",
  "Cochon d'Inde",
  "Rongeur",
  "Lyon",
  "69000",
  "Choco adore les câlins et se roule volontiers dans le foin.",
  "https://source.unsplash.com/400x300/?guineapig"
),
(
  "Poppy",
  "7 mois",
  "Hamster russe",
  "Rongeur",
  "Rouen",
  "76000",
  "Poppy est active le soir et aime les tunnels et labyrinthes.",
  "https://source.unsplash.com/400x300/?hamster"
),
(
  "Grisou",
  "1 an",
  "Rat albinos",
  "Rongeur",
  "Marseille",
  "13000",
  "Grisou est affectueux et adore interagir avec ses humains.",
  "https://source.unsplash.com/400x300/?rat"
),
(
  "Vanille",
  "4 mois",
  "Gerbille",
  "Rongeur",
  "Clermont-Ferrand",
  "63000",
  "Vanille est douce et adore jouer avec ses congénères.",
  "https://source.unsplash.com/400x300/?gerbil"
),
(
  "Pixel",
  "2 ans",
  "Cochon d'Inde",
  "Rongeur",
  "Caen",
  "14000",
  "Pixel aime les câlins et se sent vite en confiance.",
  "https://source.unsplash.com/400x300/?guineapig"
),
(
  "Fudge",
  "5 mois",
  "Hamster doré",
  "Rongeur",
  "Strasbourg",
  "67000",
  "Fudge est vif, gourmand et adore se blottir dans ses copeaux.",
  "https://source.unsplash.com/400x300/?hamster"
),
(
  "Nina",
  "1 an",
  "Souris grise",
  "Rongeur",
  "Dijon",
  "21000",
  "Nina est active et aime explorer son environnement.",
  "https://source.unsplash.com/400x300/?mouse"
),
(
  "Bounty",
  "10 mois",
  "Rat domestique",
  "Rongeur",
  "Grenoble",
  "38000",
  "Bounty est malin et joueur, parfait pour une famille patiente.",
  "https://source.unsplash.com/400x300/?rat"
),
(
  "Luna",
  "6 mois",
  "Cochon d'Inde",
  "Rongeur",
  "Angers",
  "49000",
  "Luna est affectueuse et adore les petites attentions.",
  "https://source.unsplash.com/400x300/?guineapig"
),
(
  "Twix",
  "1 an",
  "Hamster nain",
  "Rongeur",
  "Nice",
  "06000",
  "Twix est minuscule mais plein d’énergie, il adore courir.",
  "https://source.unsplash.com/400x300/?hamster"
),
(
  "Fraise",
  "3 mois",
  "Gerbille",
  "Rongeur",
  "Reims",
  "51100",
  "Fraise est mignonne, vive et adore ronger du carton.",
  "https://source.unsplash.com/400x300/?gerbil"
),
(
  "Shadow",
  "2 ans",
  "Rat domestique",
  "Rongeur",
  "Le Mans",
  "72000",
  "Shadow est intelligent et aime les séances de jeu avec son maître.",
  "https://source.unsplash.com/400x300/?rat"
),
(
  "Mimi",
  "9 mois",
  "Souris blanche",
  "Rongeur",
  "Orléans",
  "45000",
  "Mimi est douce, joueuse et s’entend bien avec les enfants.",
  "https://source.unsplash.com/400x300/?mouse"
),
(
  "Peanut",
  "6 mois",
  "Hamster russe",
  "Rongeur",
  "Toulouse",
  "31000",
  "Peanut adore grimper et se cache souvent dans ses tunnels.",
  "https://source.unsplash.com/400x300/?hamster"
),
(
  "Cannelle",
  "2 ans",
  "Cochon d'Inde",
  "Rongeur",
  "Metz",
  "57000",
  "Cannelle est calme et aime les câlins en famille.",
  "https://source.unsplash.com/400x300/?guineapig"
),
(
  "Pistache",
  "8 mois",
  "Gerbille",
  "Rongeur",
  "Perpignan",
  "66000",
  "Pistache est pleine d’énergie et aime courir partout.",
  "https://source.unsplash.com/400x300/?gerbil"
),
(
  "Moka",
  "1 an",
  "Rat domestique",
  "Rongeur",
  "Besançon",
  "25000",
  "Moka est affectueux et adore les câlins.",
  "https://source.unsplash.com/400x300/?rat"
),
(
  "Fifi",
  "5 mois",
  "Souris grise",
  "Rongeur",
  "Annecy",
  "74000",
  "Fifi est curieuse et aime courir dans les petites roues.",
  "https://source.unsplash.com/400x300/?mouse"
),
(
  "Ruby",
  "7 mois",
  "Hamster doré",
  "Rongeur",
  "Chambéry",
  "73000",
  "Ruby est vive et adore se cacher dans ses tunnels.",
  "https://source.unsplash.com/400x300/?hamster"
),
(
  "Caramel",
  "1 an",
  "Cochon d'Inde",
  "Rongeur",
  "Poitiers",
  "86000",
  "Caramel est doux et aime les câlins, idéal pour les enfants.",
  "https://source.unsplash.com/400x300/?guineapig"
);