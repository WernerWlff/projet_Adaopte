#sqlite
DROP TABLE IF EXISTS volunteer;
DROP TABLE IF EXISTS adoption_form;
DROP TABLE IF EXISTS volunteer_form;
DROP TABLE IF EXISTS shelter;
DROP TABLE IF EXISTS person;
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

CREATE TABLE person (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  firstname   TEXT NOT NULL,
  lastname    TEXT NOT NULL,
  email       TEXT NOT NULL,
  city        TEXT,
  zipcode     TEXT,
  description TEXT
);

CREATE TABLE adoption_form (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  animal_id  INTEGER NOT NULL,
  person_id  INTEGER NOT NULL,
  created_at TEXT DEFAULT (datetime('now')),
  FOREIGN KEY (animal_id) REFERENCES animal(id) ON DELETE CASCADE,
  FOREIGN KEY (person_id) REFERENCES person(id) ON DELETE CASCADE
);

CREATE TABLE volunteer_form (
  id           INTEGER PRIMARY KEY AUTOINCREMENT,
  firstname    TEXT NOT NULL,
  lastname     TEXT NOT NULL,
  email        TEXT NOT NULL,
  city         TEXT,
  zipcode      TEXT,
  availability TEXT,
  motivation   TEXT
);

CREATE TABLE shelter (
  id           INTEGER PRIMARY KEY AUTOINCREMENT,
  adress       TEXT,
  phone        TEXT,
  volunteer_id INTEGER,
  animal_id    INTEGER
);

CREATE TABLE volunteer (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  animal_id  INTEGER,
  person_id  INTEGER NOT NULL,
  shelter_id INTEGER NOT NULL,
  FOREIGN KEY (animal_id)  REFERENCES animal(id)  ON DELETE SET NULL,
  FOREIGN KEY (person_id)  REFERENCES person(id)  ON DELETE CASCADE,
  FOREIGN KEY (shelter_id) REFERENCES shelter(id) ON DELETE CASCADE
);

INSERT INTO animal (name, age, breed, type, city, zipcode, description, imageUrl) VALUES

(
  'Charlie',
  '5 ans',
  'Pug',
  'Chien',
  'Lille',
  '59000',
  'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.',
  'assets/images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'
),
(
  'Mia',
  '2 ans',
  'Chat noir et blanc',
  'Chat',
  'Strasbourg',
  '67000',
  'Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.',
  'assets/images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg'
),
(
  'Coco',
  '1 an',
  'Lapin',
  'Lapin',
  'Annecy',
  '74000',
  'Coco est un petit lapin plein d’énergie, très doux et parfait pour un foyer aimant et paisible.',
  'assets/images/chan-swan-NKyl19P5IHg-unsplash.jpg'
),
(
  'Rex',
  '4 ans',
  'Chow-chow',
  'Chien',
  'Grenoble',
  '38000',
  'Rex est un chien loyal et majestueux, idéal pour une personne douce et patiente qui aime les câlins silencieux.',
  'assets/images/alan-king-KZv7w34tluA-unsplash.jpg'
),
(
  'Luna',
  '3 ans',
  'Chat Roux',
  'Chat',
  'Bordeaux',
  '33000',
  'Luna adore les coins ensoleillés et les siestes à vos côtés. Elle vous offrira tout l’amour d’un regard félin.',
  'assets/images/jae-park-7GX5aICb5i4-unsplash.jpg'
),
(
  'Biscuit',
  '3 mois',
  'Cochon d''Inde',
  'Rongeur',
  'Tours',
  '37000',
  'Biscuit est tout petit mais plein de vie ! Il aime les légumes croquants et les instants de douceur en famille.',
  'assets/images/yosei-g-OVgE3m4MHKM-unsplash.jpg'
),
(
  'Rio',
  '5 mois',
  'Lapin nain brun',
  'Lapin',
  'Poitiers',
  '86000',
  'Rio est discret, mignon comme tout, et adore explorer les petits coins de la maison avec délicatesse.',
  'assets/images/melanie-kreutz-IFnknR2Mv5o-unsplash.jpg'
),
(
  'Ruby',
  '2 ans',
  'Chien Samoyed',
  'Chien',
  'Chamonix',
  '74400',
  'Ruby est une boule de neige pleine d’amour ! Elle adore les promenades et les câlins par temps frais.',
  'assets/images/peri-stojnic-5Vr_RVPfbMI-unsplash.jpg'
),
(
  'Oscar',
  '2 ans',
  'Labrador',
  'Chien',
  'Rennes',
  '35000',
  'Oscar est un chien joueur et affectueux.',
  'https://source.unsplash.com/400x300/?dog'
),
(
  'Bella',
  '3 ans',
  'Border Collie',
  'Chien',
  'Nantes',
  '44000',
  'Bella est vive et intelligente.',
  'https://source.unsplash.com/400x300/?dog'
),
(
  'Luna',
  '1 an',
  'Chartreux',
  'Chat',
  'Paris',
  '75000',
  'Luna est douce et calme.',
  'https://source.unsplash.com/400x300/?cat'
),
(
  'Milo',
  '4 ans',
  'Siamois',
  'Chat',
  'Lyon',
  '69000',
  'Milo adore jouer et grimper.',
  'https://source.unsplash.com/400x300/?cat'
),
(
  'Ruby',
  '6 mois',
  'Lapin Nain',
  'Lapin',
  'Bordeaux',
  '33000',
  'Ruby est curieuse et câline.',
  'https://source.unsplash.com/400x300/?rabbit'
),
(
  'Thumper',
  '2 ans',
  'Lapin Bélier',
  'Lapin',
  'Marseille',
  '13000',
  'Thumper est calme et gourmand.',
  'https://source.unsplash.com/400x300/?rabbit'
),
(
  'Nina',
  '1 an',
  'Cochon d''Inde',
  'Rongeur',
  'Lille',
  '59000',
  'Nina aime la compagnie.',
  'https://source.unsplash.com/400x300/?guineapig'
),
(
  'Max',
  '8 mois',
  'Hamster Doré',
  'Rongeur',
  'Toulouse',
  '31000',
  'Max est vif et curieux.',
  'https://source.unsplash.com/400x300/?hamster'
),
(
  'Zeus',
  '5 ans',
  'Berger Allemand',
  'Chien',
  'Nice',
  '06000',
  'Zeus est protecteur et loyal.',
  'https://source.unsplash.com/400x300/?dog'
),
(
  'Shadow',
  '2 ans',
  'Maine Coon',
  'Chat',
  'Strasbourg',
  '67000',
  'Shadow est grand et câlin.',
  'https://source.unsplash.com/400x300/?cat'
);

INSERT INTO person (firstname, lastname, email, city, zipcode, description) VALUES
(
  'Alice',
  'Dupont',
  'alice@example.com',
  'Rennes',
  '35000',
  'Adore les animaux.'
),
(
  'Bob',
  'Martin',
  'bob@example.com',
  'Nantes',
  '44000',
  'Souhaite adopter un chat.'
),
(
  'Clara',
  'Durand',
  'clara@example.com',
  'Paris',
  '75000',
  'Bénévole active.'
),
(
  'David',
  'Petit',
  'david@example.com',
  'Lyon',
  '69000',
  'Expérience avec les chiens.'
),
(
  'Emma',
  'Moreau',
  'emma@example.com',
  'Bordeaux',
  '33000',
  'Passionnée par les lapins.'
),
(
  'François',
  'Garcia',
  'francois@example.com',
  'Marseille',
  '13000',
  'Famille accueillante.'
),
(
  'Gina',
  'Lopez',
  'gina@example.com',
  'Lille',
  '59000',
  'Aime les petits rongeurs.'
),
(
  'Hugo',
  'Bernard',
  'hugo@example.com',
  'Toulouse',
  '31000',
  'Sportif et aime les chiens.'
),
(
  'Inès',
  'Roche',
  'ines@example.com',
  'Nice',
  '06000',
  'Calme et attentionnée.'
),
(
  'Julien',
  'Lefevre',
  'julien@example.com',
  'Strasbourg',
  '67000',
  'Cherche un compagnon fidèle.'
);

INSERT INTO adoption_form (animal_id, person_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

INSERT INTO volunteer_form (firstname, lastname, email, city, zipcode, availability, motivation) VALUES
(
  'Alice',
  'Dupont',
  'alice.vol@example.com',
  'Rennes',
  '35000',
  '2025-09-01',
  'Disponible les week-ends'
),
(
  'Bob',
  'Martin',
  'bob.vol@example.com',
  'Nantes',
  '44000',
  '2025-09-02',
  'Aime aider les animaux'
),
(
  'Clara',
  'Durand',
  'clara.vol@example.com',
  'Paris',
  '75000',
  '2025-09-03',
  'Disponible en semaine'
),
(
  'David',
  'Petit',
  'david.vol@example.com',
  'Lyon',
  '69000',
  '2025-09-04',
  'Intéressé par les chiens'
),
(
  'Emma',
  'Moreau',
  'emma.vol@example.com',
  'Bordeaux',
  '33000',
  '2025-09-05',
  'Disponible tous les jours'
),
(
  'François',
  'Garcia',
  'francois.vol@example.com',
  'Marseille',
  '13000',
  '2025-09-06',
  'Aime organiser des événements'
),
(
  'Gina',
  'Lopez',
  'gina.vol@example.com',
  'Lille',
  '59000',
  '2025-09-07',
  'Passionnée de petits animaux'
),
(
  'Hugo',
  'Bernard',
  'hugo.vol@example.com',
  'Toulouse',
  '31000',
  '2025-09-08',
  'Disponible en soirée'
),
(
  'Inès',
  'Roche',
  'ines.vol@example.com',
  'Nice',
  '06000',
  '2025-09-09',
  'Souhaite apprendre'
),
(
  'Julien',
  'Lefevre',
  'julien.vol@example.com',
  'Strasbourg',
  '67000',
  '2025-09-10',
  'Aide logistique'
);

INSERT INTO shelter (adress, phone, volunteer_id, animal_id) VALUES
(
  '12 Rue de la Paix, Rennes',
  '0102030405',
  1,
  1
),
(
  '24 Rue Victor Hugo, Nantes',
  '0102030406',
  2,
  2
),
(
  '36 Avenue de Paris, Paris',
  '0102030407',
  3,
  3
),
(
  '48 Rue Bellecour, Lyon',
  '0102030408',
  4,
  4
),
(
  '59 Rue Sainte-Catherine, Bordeaux',
  '0102030409',
  5,
  5
),
(
  '62 Rue du Prado, Marseille',
  '0102030410',
  6,
  6
),
(
  '74 Rue Nationale, Lille',
  '0102030411',
  7,
  7
),
(
  '88 Rue Alsace, Toulouse',
  '0102030412',
  8,
  8
),
(
  '93 Rue Masséna, Nice',
  '0102030413',
  9,
  9
),
(
  '107 Rue Kleber, Strasbourg',
  '0102030414',
  10,
  10
);

INSERT INTO volunteer (animal_id, person_id, shelter_id) VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10);
