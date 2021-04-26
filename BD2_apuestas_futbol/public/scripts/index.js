

const db = require("../../db.js");

var home = document.querySelector("#home")

home.innerHTML = "Home Team: ";

//let t = document.querySelector('#aiuda');

//t.innerHTML="MALDITOS TODOS"
//let btn = document.querySelector('#betBtn');

function bet(){
  var btn = document.querySelector('#betBtn');
  btn.disabled = true;
  btn.innerHTML ='Submitting....';
  db.insert_bet(34, 227790, 700, "local_win", "elrick");
  btn.disabled = false;
  btn.innerHTML = 'Submited';

}



/*
let game_id = document.querySelector('#game_id');
let home_team = document.querySelector('#home');
let away_team = document.querySelector('#away');
var date = document.querySelector('#date');
var win_home = document.querySelector('#win_local');
var win_away = document.querySelector('#win_away');
var draw = document.querySelector('#draw');

document.getElementById("home").innerHTML = "Paragraph changed!";

//db.select_game(0);
//home_team.innerHTML= 'Home am:' ;

//select *from partidos where status=0 order by fecha asc
<button id="hellobutton">Hello</button>

function hello() {
alert('Hello');
}
document.getElementById("betBtn").addEventListener("click", hello);


function bet(){
  var btn = document.querySelector('#betBtn');
  btn.disabled = true;
  btn.innerHTML ='Submitting...';
  db.insert_bet();
}*/