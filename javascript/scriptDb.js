const testDb = document.getElementById("test_db")

initSqlJs({
    locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.2/${file}`
  }).then(SQL => {

    fetch("animal.db")
      .then(res => res.arrayBuffer())
      .then(buf => {
        const db = new SQL.Database(new Uint8Array(buf));
        const res = db.exec("SELECT * FROM animal;");

        // console.log(res[0]);
        // console.log(Object.values(res[0].values)) // on peut aussi faire .values[i] pour récupérer les élements que l'on souhaite

        //batterie d'acide
        // console.log(typeof(Object.values(res[0].values[0]))) // object mdr je veux pas me foutre en l'air
        // console.log(Object.values(res[0].values[0])) // le premier élément du tableau
        // console.log(Object.values(res[0].values[1])) // le deuxième élément du tableau

        // console.log(typeof(res[0].values[0]))
        // console.log(res[0].values[0]) // fait gagner du temps car pas besoin de réecrire le début
        // console.log(res[0].values[1]) // affiche le deuxième élément du tableau
        
        // méthode pour récupérer les informations individuelles ( car c'est un objet donc il faut le décomposer pour pouvoir sortir ses infos)
        // const value = res[0].values[0]
        // console.log(typeof(value))
        // console.log(value[0])
        // console.log(value[1])
        // console.log(value[2])
        // console.log(value[3])
        // console.log(value[4])
        // console.log(value[5])
        // console.log(value[6])
        // console.log(value[7])

        // permet de parcourir la base de donnée avec une limite --> peut être intéressant à faire avec notre limite de 8 cartes par page
        // for(i = 0; i < 8; i++){
        //   const testValue = res[0].values[i]
        //   console.log(testValue[1])
        //   console.log(testValue[2])
        // }

        // for(let i = 0; i < 8; i++){

        //   // l'espace qui va contenir chacune de nos cartes
        //   const container = document.createElement("div");
        //   container.className = 'card';
        //   container.setAttribute("id", Object.values(res[0].values[i].id))
          
        //   // l'espace qui va permettre d'encapsuler notre image ( évite les problème si elle n'ont pas les mêmes résolutions)
        //   const cardImage = document.createElement('div');
        //   cardImage.className = "cardImage"

        //   // l'image
        //   const img = document.createElement("img")
        //   img.src = db.exec(`SELECT imageUrl FROM animal WHERE name=${Object.values(res[0].values[i].name)}`)
        //   img.alt = `${Object.values(res[0].values[i].name)}_${Object.values(res[0].values[i].name)}`
        //   img.className = 'animalPhoto'

        //   cardImage.appendChild(img);

        //   // le type
        //   const cardType = document.createElement("p")
        //   cardType.className = "animalType"
        //   cardType.textContent = Object.values(res[0].values[i].type)

        //   // le nom
        //   const cardName = document.createElement("p")
        //   cardName.className = "animalName"
        //   cardName.textContent = Object.values(res[0].values[i].name)

        //   // l'age et la race
        //   const cardAgeAndBreed = document.createElement("p")
        //   cardAgeAndBreed.className = "animalAgeAndBreed"
        //   cardAgeAndBreed.textContent = `${Object.values(res[0].values[i].age)} · ${Object.values(res[0].values[i].breed)}`

        //   // La ville et le code Postal
        //   const cardLocalisation = document.createElement("p")
        //   cardLocalisation.className = 'animalLocalisation'
        //   cardLocalisation.textContent = `${Object.values(res[0].values[i].city)}, ${Object.values(res[0].values[i].zipcode)}`

        //   // La description
        //   const cardDescription = document.createElement("p")
        //   cardDescription.className = 'animalDescription'
        //   cardDescription.textContent = Object.values(res[0].values[i].description)

        //   // le bouton
        //   const meetUpButton = document.createElement("button")
        //   meetUpButton.className = 'meetUpButton'
        //   meetUpButton.textContent = "Rencontrer"


        //   // permet d'allouer nos nouvelles divisions et paragraphes a notre div container
        //   container.appendChild(cardType)
        //   container.appendChild(cardName)
        //   container.appendChild(cardAgeAndBreed)
        //   container.appendChild(cardLocalisation)
        //   container.appendChild(cardDescription)
        //   container.appendChild(meetUpButton)
        // }
      });
  }); 