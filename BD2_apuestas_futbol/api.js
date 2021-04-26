

const db = require("./db.js")
const fetch = require("node-fetch");

//id_Laliga = 538, "season_id":1511, countryid = 113
//id_Premier = 237, "season_id":352, country id =42
//status = 3 = finished, = 0 = not started

const url_england_teams = 'https://app.sportdataapi.com/api/v1/soccer/teams?apikey=e22139b0-a220-11eb-9330-999473b28ee7&country_id=42';
const url_spain_teams = 'https://app.sportdataapi.com/api/v1/soccer/teams?apikey=e22139b0-a220-11eb-9330-999473b28ee7&country_id=113';

const url_spain_players="https://app.sportdataapi.com/api/v1/soccer/players?apikey=e22139b0-a220-11eb-9330-999473b28ee7&country_id=42"
const url_england_players="https://app.sportdataapi.com/api/v1/soccer/players?apikey=e22139b0-a220-11eb-9330-999473b28ee7&country_id=113"

const url_england_stadiums='https://app.sportdataapi.com/api/v1/soccer/venues?apikey=e22139b0-a220-11eb-9330-999473b28ee7&country_id=113'
const url_spain_stadiums='https://app.sportdataapi.com/api/v1/soccer/venues?apikey=e22139b0-a220-11eb-9330-999473b28ee7&country_id=42'

const url_spain_games='https://app.sportdataapi.com/api/v1/soccer/matches?apikey=e22139b0-a220-11eb-9330-999473b28ee7&season_id=1511&date_from=2021-04-10'
const url_england_games='https://app.sportdataapi.com/api/v1/soccer/matches?apikey=e22139b0-a220-11eb-9330-999473b28ee7&season_id=352&date_from=2021-04-10'

function api_teams(api_url){
    fetch(api_url,{
        method: 'GET',
        headers: new fetch.Headers({
      // Encabezados
     'Content-Type': 'application/json'
      }),   

    }).then(r=>{
       //console.log(respuesta);
       return r.json();
    }).then(result =>{
        //console.log(result);
        for (i in result.data){
          var id_team = result.data[i].team_id;
          var team_name = result.data[i].name;
          db.insert_teams(id_team, team_name, 237);
        }

    })
    .catch(e => console.log(e))
}

function api_stadiums(api_url){
  fetch(api_url,{
      method: 'GET',
      headers: new fetch.Headers({
    // Encabezados
   'Content-Type': 'application/json'
    }),   

  }).then(r=>{
     //console.log(respuesta);
     return r.json();
  }).then(result =>{
      //console.log(result);
      for (i in result.data){
        var id_estadio = result.data[i].venue_id;
        var nombre = result.data[i].name;
        db.insert_stadiums(id_estadio, nombre);
      }

  })
  .catch(e => console.log(e))
}

function api_games(api_url){
  fetch(api_url,{
      method: 'GET',
      headers: new fetch.Headers({
    // Encabezados
   'Content-Type': 'application/json'
    }),   

  }).then(r=>{
     //console.log(respuesta);
     return r.json();
  }).then(result =>{
      //console.log(result);
      for (i in result.data){
        var id_game = result.data[i].match_id;
        var id_local = result.data[i].home_team.team_id;
        var id_away = result.data[i].away_team.team_id;
        var id_league = result.data[i].league_id;
        var id_stadium = result.data[i].venue.venue_id;
        var date = result.data[i].match_start;
        var season = result.data[i].season_id;
        var status = result.data[i].status_code;
        var name_local = result.data[i].home_team.name;
        var name_away = result.data[i].away_team.name;
        var score_local = result.data[i].stats.home_score;
        var score_away = result.data[i].stats.away_score;
        //console.log(score_local + " "+ score_away)
        db.insert_games(id_game, id_local, id_away, id_league, id_stadium, date, season, status, name_local, name_away, score_local, score_away);
      }

  })
  .catch(e => console.log(e))
}

function api_players(api_url){
  fetch(api_url,{
      method: 'GET',
      headers: new fetch.Headers({
    // Encabezados
   'Content-Type': 'application/json'
    }),   

  }).then(r=>{
     //console.log(respuesta);
     return r.json();
  }).then(result =>{
      //console.log(result);
      for (i in result.data){
        var id = result.data[i].player_id;
        var nombre = result.data[i].firstname;
        db.insert_players(id, nombre);
      }

  })
  .catch(e => console.log(e))
}


function api_update_games(){
 db.delete_table_data('partidos');
 api_games(url_spain_games);
 api_games(url_england_games);
}

module.exports = {api_update_games}