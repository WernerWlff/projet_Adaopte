
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS users;

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


INSERT INTO animal (name, age, breed, type, city, zipcode, description, imageUrl) VALUES

  ( "Charlie",
    "5 ans",
    "Pug",
    "Chien",
    "Lille",
    "59000",
    "Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.",
    "assets/images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg"
  ),
  (
    "Mia",
    "2 ans",
    "Chat noir et blanc",
    "Chat",
    "Strasbourg",
    "67000",
    "Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.",
    "assets/images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg"
  ),
  (
    "Coco",
    "1 an",
    "Lapin",
    "Lapin",
    "Annecy",
    "74000",
    "Coco est un petit lapin plein d’énergie, très doux et parfait pour un foyer aimant et paisible.",
    "assets/images/chan-swan-NKyl19P5IHg-unsplash.jpg"
  ),
  (
    "Rex",
    "4 ans",
    "Chow-chow",
    "Chien",
    "Grenoble",
    "38000",
    "Rex est un chien loyal et majestueux, idéal pour une personne douce et patiente qui aime les câlins silencieux.",
    "assets/images/alan-king-KZv7w34tluA-unsplash.jpg"
  ),
  (
    "Luna",
    "3 ans",
    "Chat Roux",
    "Chat",
    "Bordeaux",
    "33000",
    "Luna adore les coins ensoleillés et les siestes à vos côtés. Elle vous offrira tout l’amour d’un regard félin.",
    "assets/images/jae-park-7GX5aICb5i4-unsplash.jpg"
  ),
  (
    "Biscuit",
    "3 mois",
    "Cochon d'Inde",
    "Rongeur",
    "Tours",
    "37000",
    "Biscuit est tout petit mais plein de vie ! Il aime les légumes croquants et les instants de douceur en famille.",
    "assets/images/yosei-g-OVgE3m4MHKM-unsplash.jpg"
  ),
  (
    "Rio",
    "5 mois",
    "Lapin nain brun",
    "Lapin",
    "Poitiers",
    "86000",
    "Rio est discret, mignon comme tout, et adore explorer les petits coins de la maison avec délicatesse.",
    "assets/images/melanie-kreutz-IFnknR2Mv5o-unsplash.jpg"
  ),
  (
    "Ruby",
    "2 ans",
    "Chien Samoyed",
    "Chien",
    "Chamonix",
    "74400",
    "Ruby est une boule de neige pleine d’amour ! Elle adore les promenades et les câlins par temps frais.",
    "assets/images/peri-stojnic-5Vr_RVPfbMI-unsplash.jpg"
  );
