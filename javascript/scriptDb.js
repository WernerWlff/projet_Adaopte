const testDb = document.getElementsByClassName("test_db")

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
        // console.log(value[8])

        // permet de parcourir la base de donnée avec une limite --> peut être intéressant à faire avec notre limite de 8 cartes par page
        // for(i = 0; i < 8; i++){
        //   const testValue = res[0].values[i]
        //   console.log(testValue[1])
        //   console.log(testValue[2])
        // }

        // changer toutes les valeurs qui permettent de faire un id ou une classe
        // on peut sans doute changer par textContent --> on change des paragraphes donc pas très intéressant de faire des ids

        // for(let i = 0; i < 8; i++){
        // const value = res[0].values[i]

        const value = res[0].values[0]
        // console.log(value)
        
          // l'espace qui va contenir chacune de nos cartes
          const container = document.createElement("div");
          container.className = 'card';
          container.setAttribute("id", value[0])
          console.log(container)
          
          // l'espace qui va permettre d'encapsuler notre image ( évite les problème si elle n'ont pas les mêmes résolutions)
          const cardImage = document.createElement('div');
          cardImage.className = "cardImage"
          console.log(cardImage)

          // // l'image
          const img = document.createElement("img")
          img.src = db.exec(value[8])
          img.alt = `${value[1]}_${value[4]}`
          img.className = 'animalPhoto'
          console.log(img)

          cardImage.appendChild(img);

          // le type
          const cardType = document.createElement("p")
          cardType.className = "animalType"
          cardType.textContent = value[4]
          console.log(cardType)

          // le nom
          const cardName = document.createElement("p")
          cardName.className = "animalName"
          cardName.innerHTML = value[1]
          console.log(cardName)

          // l'age et la race
          const cardAgeAndBreed = document.createElement("p")
          cardAgeAndBreed.className = "animalAgeAndBreed"
          cardAgeAndBreed.innerHTML = `${value[2]} · ${value[3]}`
          console.log(cardAgeAndBreed)

          // La ville et le code Postal
          const cardLocalisation = document.createElement("p")
          cardLocalisation.className = 'animalLocalisation'
          cardLocalisation.innerHTML = `${value[5]}, ${value[6]}`
          console.log(cardLocalisation)

          // La description
          const cardDescription = document.createElement("p")
          cardDescription.className = 'animalDescription'
          cardDescription.textContent = value[7]
          console.log(cardDescription)

          // le bouton
          const meetUpButton = document.createElement("button")
          meetUpButton.className = 'meetUpButton'
          meetUpButton.textContent = "Rencontrer"


          // permet d'allouer nos nouvelles divisions et paragraphes a notre div container
          container.appendChild(cardImage)
          container.appendChild(cardType)
          container.appendChild(cardName)
          container.appendChild(cardAgeAndBreed)
          container.appendChild(cardLocalisation)
          container.appendChild(cardDescription)
          container.appendChild(meetUpButton)
          

          console.log("le type de l'element testDb est : " + typeof(testDb))
          console.log(container)
        

        //}
    });
});