const testDb = document.getElementById("test_db");
const researchAnimalSelection = document.getElementById('researchAnimalSelection');
const researchInput = document.getElementById('researchInput');
const researchButton = document.getElementById("researchButton");
let currentPage = 1; // on démarre à la page 1
const cardPerPage = 8; // nombre d'élements max à afficher par page
let currentData = []; // vide pour l'instant mais va récupérer la db

researchButton.addEventListener("click", () => {
  let selectValue = researchAnimalSelection.value;
  let inputValue = researchInput.value;
  let res;

  testDb.className = "flex flex-wrap mx-3 w-full"

  testDb.innerHTML = '';

  inputValue = inputValue.charAt(0).toUpperCase() + inputValue.slice(1).toLowerCase();
  
  initSqlJs({
    locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.2/${file}`
  }).then(SQL => {
    fetch("animal.db")
      .then(res => res.arrayBuffer())
      .then(buf => {
        const db = new SQL.Database(new Uint8Array(buf));
        testDb.innerHTML = '';

        // type et city demandés
        if(selectValue !== "Tous" && inputValue !== ''){
          res = db.exec(`SELECT * FROM animal WHERE type='${selectValue}' AND city='${inputValue}';`);
          creationCards(res[0].values);
        }

        //type demandé et pas city
        else if(selectValue !=='Tous' && inputValue === ''){
          res = db.exec(`SELECT * FROM animal WHERE type='${selectValue}';`);
          creationCards(res[0].values);
        }

        //type non demandé et city demandée
        else if(selectValue ==='Tous' && inputValue !== ''){
          res = db.exec(`SELECT * FROM animal WHERE city='${inputValue}';`);
          creationCards(res[0].values);
        }

        // type et city non demandé 
        else{
          res = db.exec("SELECT * FROM animal;");
          creationCards(res[0].values);
        }
      })
      .catch(error => {
      console.error("Erreur lors de la récupération de la base de données :", error);
    })
    .catch(error => {
    console.error("Erreur lors de l'initialisation de SQL.js :", error);
    })
  })
});


function creationCards(database){
  testDb.innerHTML = "" // pour vider l'affichage
  currentData = database // pour récupérer le tableau de données

  const minPage = (currentPage - 1) * cardPerPage;
  const maxPage = Math.min(minPage + cardPerPage, currentData.length)
  
        for(let i = minPage ; i < maxPage; i++) {
        const value = database[i];

        // Création du container
        const container = document.createElement("div");
        container.className = "w-full sm:w-1/2 md:w-1/4 px-3 mb-6";
        container.setAttribute("id", `${value[0]}`);
        
        // Création de la carte
        const card = document.createElement("div");
        card.className = "overflow-hidden shadow-lg bg-white flex flex-col h-full"

        // Image
        const img = document.createElement("img");
        img.className = "w-full h-48 object-cover";
        img.src = value[8];
        img.alt = `${value[1]}_${value[4]}`;

        // Zone d'infos
        const textContainer = document.createElement("div");
        textContainer.className = "p-4 flex flex-col flex-grow justify-between";

        const textArea = document.createElement("div");

        // Type
        const cardType = document.createElement("p");
        cardType.className = "text-sm text-gray-700";
        cardType.textContent = value[4];

        // Nom
        const cardName = document.createElement("p");
        cardName.className = "text-lg text-(--accent-color) font-bold";
        cardName.textContent = value[1];

        // Âge et race
        const cardAgeAndBreed = document.createElement("p");
        cardAgeAndBreed.className = "text-gray-700";
        cardAgeAndBreed.textContent = `${value[2]} · ${value[3]}`;

        // Localisation
        const cardLocalisation = document.createElement("p");
        cardLocalisation.className = 'text-gray-500 text-sm mt-1';
        cardLocalisation.textContent = `${value[5]}, ${value[6]}`;

        // Description
        const cardDescription = document.createElement("p");
        cardDescription.className = 'text-gray-700 text-sm mt-2';
        cardDescription.textContent = value[7];
          
        // Bouton
        const meetUpButton = document.createElement("button");
        meetUpButton.className = 'bg-gray-900 w-1/4 text-white text-xs font-medium py-2 p-px mt-2 rounded-full hover:bg-gray-800 transition cursor-pointer';
        meetUpButton.textContent = "Rencontrer";
        
        meetUpButton.addEventListener('click', () => {
          console.log("Voici les informations de l'animal :")
          console.log(cardType.textContent);
          console.log(cardName.textContent);
        })

        textArea.appendChild(cardType);
        textArea.appendChild(cardName);
        textArea.appendChild(cardAgeAndBreed);
        textArea.appendChild(cardLocalisation);
        textArea.appendChild(cardDescription);

        textContainer.appendChild(textArea);
        textContainer.appendChild(meetUpButton);

        card.appendChild(img);
        card.appendChild(textContainer);

        container.appendChild(card);

        testDb.appendChild(container);

        createPagination();
      }
}

function createPagination() {
  const pagination = document.getElementById("pagination");
  pagination.innerHTML = "";

  const totalPages = Math.ceil(currentData.length / cardPerPage); // rends l'entier le plus proche

  // Bouton Précédent
  if (currentPage > 1) {
    const previousButton = document.createElement("button");
    previousButton.textContent = "« Précédent";
    previousButton.className = "px-3 py-1 border border-gray-300 rounded bg-white text-orange-500 hover:bg-orange-100 transition";
    previousButton.addEventListener('click', () => {
      currentPage--;
      creationCards(currentData);
      window.scrollTo({top: 0, behavior : 'smooth'});
    });

    pagination.appendChild(previousButton);
  }

  // Boucles sur toutes les pages
  for (let i = 1; i <= totalPages; i++) {
    const pageButton = document.createElement("button");
    pageButton.textContent = i;
    pageButton.className = "px-3 py-1 border border-gray-300 rounded bg-white text-orange-500 hover:bg-gray-100 transition";
    
    if (i === currentPage) {
      pageButton.className ="px-3 py-1 border border-orange-500 rounded bg-orange-500 text-white font-bold";
    }

    pageButton.addEventListener('click', () => {
      currentPage = i;
      creationCards(currentData);
      window.scrollTo({top: 0, behavior : 'smooth'});
    });

    pagination.appendChild(pageButton);
  }

  // Bouton Suivant
  if (currentPage < totalPages) {
    const nextButton = document.createElement("button");
    nextButton.textContent = "Suivant »";
    nextButton.className = "px-3 py-1 border border-gray-300 rounded bg-white text-orange-500 hover:bg-orange-100 transition";

    nextButton.addEventListener('click', () => {
      currentPage++;
      creationCards(currentData);
      window.scrollTo({top: 0, behavior : 'smooth'});
    });

    pagination.appendChild(nextButton);
  }
}