const testDb = document.getElementById("test_db");
const researchAnimalSelection = document.getElementById('researchAnimalSelection');
const researchInput = document.getElementById('researchInput');
const researchButton = document.getElementById("researchButton");

researchButton.addEventListener("click", () => {
  let selectValue = researchAnimalSelection.value;
  let inputValue = researchInput.value;
  let res;

  inputValue = inputValue.charAt(0).toUpperCase() + inputValue.slice(1).toLowerCase();
  
  initSqlJs({
    locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.2/${file}`
  }).then(SQL => {
    fetch("animal.db")
      .then(res => res.arrayBuffer())
      .then(buf => {
        const db = new SQL.Database(new Uint8Array(buf));

        // type et city demandés
        if(selectValue !== "Tout" && inputValue !== ''){
          res = db.exec(`SELECT * FROM animal WHERE type='${selectValue}' AND city='${inputValue}';`);
          console.log(res[0].values.length)
          creationCards(res);
        }

        //type demandé et pas city
        else if(selectValue !=='Tout' && inputValue === ''){
          res = db.exec(`SELECT * FROM animal WHERE type='${selectValue}';`);
          console.log(res[0].values.length)
          creationCards(res);
        }

        //type non demandé et city demandée
        else if(selectValue ==='Tout' && inputValue !== ''){
          res = db.exec(`SELECT * FROM animal WHERE city='${inputValue}';`);
          console.log(res[0].values.length)
          creationCards(res);
        }


        // type et city non demandé 
        else{
          res = db.exec("SELECT * FROM animal;");
          console.log(res[0].values.length)
          creationCards(res);
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
        for(let i = 0; i < Math.max(database[0].values.length, 8); i++) {
        const value = database[0].values[i];

        console.log(typeof(value[0]))

        // Création de la carte
        const container = document.createElement("div");
        container.className = 'card';
        container.setAttribute("id", `${value[0]}`);

        // Image
        const cardImage = document.createElement('div');
        cardImage.className = "cardImage";
        const img = document.createElement("img");
        img.src = value[8];
        img.alt = `${value[1]}_${value[4]}`;
        img.className = 'animalPhoto';
        cardImage.appendChild(img);

        // Type
        const cardType = document.createElement("p");
        cardType.className = "animalType";
        cardType.textContent = value[4];

        // Nom
        const cardName = document.createElement("p");
        cardName.className = "animalName";
        cardName.textContent = value[1];

        // Âge et race
        const cardAgeAndBreed = document.createElement("p");
        cardAgeAndBreed.className = "animalAgeAndBreed";
        cardAgeAndBreed.textContent = `${value[2]} · ${value[3]}`;

        // Localisation
        const cardLocalisation = document.createElement("p");
        cardLocalisation.className = 'animalLocalisation';
        cardLocalisation.textContent = `${value[5]}, ${value[6]}`;

        const cardDescription = document.createElement("p");
        cardDescription.className = 'animalDescription';
        cardDescription.textContent = value[7];

        const meetUpButton = document.createElement("button");
        meetUpButton.className = 'meetUpButton';
        meetUpButton.textContent = "Rencontrer";

        container.appendChild(cardImage);
        container.appendChild(cardType);
        container.appendChild(cardName);
        container.appendChild(cardAgeAndBreed);
        container.appendChild(cardLocalisation);
        container.appendChild(cardDescription);
        container.appendChild(meetUpButton);
        testDb.appendChild(container);
      }
}