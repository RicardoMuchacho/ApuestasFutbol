
//Para ver proximo partido mas cercano
//select_game(0)

//Para ver segundo partido mas cercano
//select_game(1)   - asi sucesivamente

//insert_bet(34, 227790, 700, "local win", "rick");

//node db.js - ejecutar en terminal poniendo una funcion para probarla

const {Client, Pool} = require('pg');
 
const pool = new Pool({
    user:"postgres",
    password:"admin",
    host:"localhost",
    port:5433,
    database: "Futbol"
  })

const client = new Client({
    user:"postgres",
    password:"admin",
    host:"localhost",
    port:5433,
    database: "Futbol"
})

pool.on('error', (err, client) => {
    console.error('Unexpected error on idle client', err)
    process.exit(-1)
  })

  async function select_game(db_row) {
    const client = await pool.connect()
    try {
    const res = await client.query('SELECT * FROM partidos WHERE status = $1 order by fecha asc', [0])
     var id_partido = res.rows[db_row].id_partido
     var nombre_local = res.rows[db_row].nombre_local
     var nombre_visitante = res.rows[db_row].nombre_visitante
     var fecha = res.rows[db_row].fecha
     console.log(id_partido + nombre_local+ nombre_visitante+ fecha)
    } catch (err) {
        console.log(err.stack)
      }
    finally {
      // Make sure to release the client before any error handling,
      // just in case the error handling itself throws an error.
      client.release()
    }
  }
//select_game(0);

async function test(text, values){
    try {
        await client.connect()
        await client.query(text, values)
        await client.end()
      } catch (err) {
        console.log(err.stack)
      }
}

async function insert_bet(id_apuesta, id_partido, monto, opcion , usuario) {
  const client = await pool.connect()
  try {
    const res = await client.query("insert into apuestas values ($1, $2, $3, $4, $5)", [id_apuesta, id_partido, monto, opcion, usuario])
    console.log(res.rows)
  } catch (err) {
      console.log(err.stack)
    }
  finally {
    client.release()
  }
}


async function insert_teams(id_team, team_name, id_league) {
    const client = await pool.connect()
    try {
      const res = await client.query("insert into equipos values ($1, $2, $3)", [id_team, team_name, id_league])
      console.log(res.rows)
    } catch (err) {
        console.log(err.stack)
      }
    finally {
      client.release()
    }
}

async function insert_teams(id_team, team_name, id_league) {
  const client = await pool.connect()
  try {
    const res = await client.query("insert into equipos values ($1, $2, $3)", [id_team, team_name, id_league])
    console.log(res.rows)
  } catch (err) {
      console.log(err.stack)
    }
  finally {
    client.release()
  }
}

  async function delete_table_data(table) {
    const client = await pool.connect()
    try {
      const res = await client.query("delete from " + table)
      console.log("table deleted")
    } catch (err) {
        console.log(err.stack)
      }
    finally {
      client.release()
    }
  }

  async function insert_players(id, name) {
    const client = await pool.connect()
    try {
      const res = await client.query("insert into jugadores values ($1, $2)", [id, name])
      console.log(res.rows)
    } catch (err) {
        console.log(err.stack)
      }
    finally {
      client.release()
    }
}

  async function insert_stadiums(id, name) {
    const client = await pool.connect()
    try {
      const res = await client.query("insert into estadios values ($1, $2)", [id, name])
      console.log(res.rows)
    } catch (err) {
        console.log(err.stack)
      }
    finally {
      client.release()
    }
  }

  async function insert_games(id_game, id_local, id_away, id_league, id_stadium, date, season, status, name_local, name_away, score_local, score_away) {
    const client = await pool.connect()
    try {
      const res = await client.query("insert into partidos values ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)", [id_game, id_local, id_away, id_league, id_stadium, date, season, status, name_local, name_away, score_local, score_away])
      console.log("game updated, id: "+ id_game)
    } catch (err) {
        console.log(err.stack)
      }
    finally {
      client.release()
    }
  }



module.exports = {insert_players, insert_bet, select_game, delete_table_data,insert_games, insert_stadiums, insert_teams}