

initSqlJs({
    locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.2/${file}`
  }).then(SQL => {

    fetch("animal.db")
      .then(res => res.arrayBuffer())
      .then(buf => {
        const db = new SQL.Database(new Uint8Array(buf));
        const res = db.exec("SELECT * FROM animal;");
        console.log(res[0]);
      });
  });   