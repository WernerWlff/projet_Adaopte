const testDb = document.getElementById("test_db"); // Prends le premier élément
const researchAnimalSelection = document.getElementById('researchAnimalSelection') // <select>
const researchInput = document.getElementById('researchInput') // input
const researchButton = document.getElementById("researchButton"); // <button>



//addEventListener --> on va faire nos recherches avec ça
researchButton.addEventListener("click", () => {

const selectValue = researchAnimalSelection.value // on récupère le texte de notre sélecteur de type
const inputValue = researchInput.value // on récupère le texte de notre input ( la ville )

initSqlJs({
  locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.2/${file}`
}).then(SQL => {
  fetch("animal.db")
    .then(res => res.arrayBuffer())
    .then(buf => {
      const db = new SQL.Database(new Uint8Array(buf));
      const res = db.exec("SELECT * FROM animal;");

      for(let i = 0; i < 8; i++) {
        const value = res[0].values[i];

        // Création de la carte
        const container = document.createElement("div");
        container.className = 'card';
        container.setAttribute("id", value[0]);

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
    })
    .catch(error => {
      console.error("Erreur lors de la récupération de la base de données :", error);
    });
})
.catch(error => {
  console.error("Erreur lors de l'initialisation de SQL.js :", error);
});
})