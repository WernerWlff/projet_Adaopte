const cardsDb = document.getElementById("cardsDb");
const researchAnimalSelection = document.getElementById('researchAnimalSelection');
const researchInput = document.getElementById('researchInput');
const researchButton = document.getElementById("researchButton");
const pagination = document.getElementById("pagination");
let currentPage = 1; 
const cardPerPage = 8; 
let currentData = [];

researchButton.addEventListener("click", () => {
  let selectValue = researchAnimalSelection.value;
  let inputValue = researchInput.value;
  let res;

document.getElementById("resetFilters").addEventListener("click", (e) => {
  location.reload();    
});

  cardsDb.className = "flex flex-wrap mx-3 w-full"

  cardsDb.innerHTML = '';
  pagination.innerHTML= '';
  document.getElementById("resultCount").textContent = '';

  inputValue = inputValue.charAt(0).toUpperCase() + inputValue.slice(1).toLowerCase();
  
  initSqlJs({
    locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.2/${file}`
  }).then(SQL => {
    fetch("animal.db")
      .then(res => res.arrayBuffer())
      .then(buf => {
        const db = new SQL.Database(new Uint8Array(buf));
        cardsDb.innerHTML = '';

        if(selectValue !== "Tous" && inputValue !== ''){
          res = db.exec(`SELECT * FROM animal WHERE type='${selectValue}' AND city='${inputValue}';`);
          if(!res.length || !res[0] || !res[0].values.length){
            document.getElementById('resultCount').textContent = "Aucun animal trouvé"
          }
          else if(res[0].values.length === 1){
            document.getElementById('resultCount').textContent = res[0].values.length + " animal trouvé"
            creationCards(res[0].values);
          }
          else{
          document.getElementById("resultCount").textContent =
          res[0].values.length + " animaux trouvés";
          creationCards(res[0].values);
          }
        }
        
        else if(selectValue !=='Tous' && inputValue === ''){
          res = db.exec(`SELECT * FROM animal WHERE type='${selectValue}';`);
          if(!res.length || !res[0] || !res[0].values.length){
            document.getElementById('resultCount').textContent = "Aucun animal trouvé"
          }
          else if(res[0].values.length === 1){
            document.getElementById('resultCount').textContent = res[0].values.length + " animal trouvé"
            creationCards(res[0].values);
          }
          else{
          document.getElementById("resultCount").textContent =
          res[0].values.length + " animaux trouvés";
          creationCards(res[0].values);
          }
        }

        else if(selectValue ==='Tous' && inputValue !== ''){
          res = db.exec(`SELECT * FROM animal WHERE city='${inputValue}';`);
          if(!res.length || !res[0] || !res[0].values.length){
            document.getElementById('resultCount').textContent = "Aucun animal trouvé"
          }
          else if(res[0].values.length === 1){
            document.getElementById('resultCount').textContent = res[0].values.length + " animal trouvé"
            creationCards(res[0].values);
          }
          else{
          document.getElementById("resultCount").textContent =
          res[0].values.length + " animaux trouvés";
          creationCards(res[0].values);
          }
        }

        else{
          res = db.exec("SELECT * FROM animal;");
          if(!res.length || !res[0] || !res[0].values.length){
            document.getElementById('resultCount').textContent = "Aucun animal trouvé"
          }
          else if(res[0].values.length === 1){
            document.getElementById('resultCount').textContent = res[0].values.length + " animal trouvé"
            creationCards(res[0].values);
          }
          else{
          document.getElementById("resultCount").textContent =
          res[0].values.length + " animaux trouvés";
          creationCards(res[0].values);
          }
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
  cardsDb.innerHTML = ""; 
  currentData = database;

  const minCards = (currentPage - 1) * cardPerPage;
  const maxCards = Math.min(minCards + cardPerPage, currentData.length);
  
        for(let i = minCards ; i < maxCards; i++) {
        const value = database[i];

        const container = document.createElement("div");
        container.className = "w-full sm:w-1/2 md:w-1/4 px-3 mb-6";
        container.setAttribute("id", `${value[0]}`);
        
        const card = document.createElement("div");
        card.className = "overflow-hidden shadow-lg bg-white flex flex-col h-full";

        const img = document.createElement("img");
        img.className = "w-full h-48 object-cover";
        img.src = value[8];
        img.alt = `${value[1]}_${value[4]}`;

        const textContainer = document.createElement("div");
        textContainer.className = "p-4 flex flex-col flex-grow justify-between";

        const textArea = document.createElement("div");

        const cardType = document.createElement("p");
        cardType.className = "text-sm text-gray-700";
        cardType.textContent = value[4];

        const cardName = document.createElement("p");
        cardName.className = "text-lg text-(--accent-color) font-bold";
        cardName.textContent = value[1];

        const cardAgeAndBreed = document.createElement("p");
        cardAgeAndBreed.className = "text-gray-700";
        cardAgeAndBreed.textContent = `${value[2]} · ${value[3]}`;

        const cardLocalisation = document.createElement("p");
        cardLocalisation.className = 'text-gray-500 text-sm mt-1';
        cardLocalisation.textContent = `${value[5]}, ${value[6]}`;

        const cardDescription = document.createElement("p");
        cardDescription.className = 'text-gray-700 text-sm mt-2';
        cardDescription.textContent = value[7];
          
        const meetUpButton = document.createElement("button");
        meetUpButton.className = 'bg-gray-900 w-1/3 sm:w-full md:w-full lg:w-1/3 text-white text-xs font-bold py-2 mt-2 rounded-full hover:bg-gray-800 transition cursor-pointer';
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

        cardsDb.appendChild(container);

        createPagination();
      }
}

function createPagination() {
  pagination.innerHTML=''
  const totalPages = Math.ceil(currentData.length / cardPerPage);
  
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