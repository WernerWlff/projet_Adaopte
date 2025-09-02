const testDb = document.getElementById("test_db")

initSqlJs({
    locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.2/${file}`
  }).then(SQL => {

    fetch("animal.db")
      .then(res => res.arrayBuffer())
      .then(buf => {
        const db = new SQL.Database(new Uint8Array(buf));
        const res = db.exec("SELECT * FROM animal WHERE type='Chat';");
        console.log(res[0]);
        console.log(Object.values(res[0].values)) // on peut aussi faire .values[i] pour récupérer les élements que l'on souhaite

        for(i in res.length){
          testDb.innerHTML += `<p>res[i].name</p>`
        }
      });
  });

  // initSqlJs(testDb)