
const api = require("./api.js")
const express = require('express');
const path = require('path');
var bodyParser = require('body-parser');

const app = express();

//static folder
app.use(express.static(path.join(__dirname,'public')));

//middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

/*
app.get('/index', (req, res)=>{
    res.sendFile(path.join(__dirname + 'index.js'));
})

app.get('../index', (req, res)=>{
    res.sendFile(path.join(__dirname + 'db.js'));
})

app.get('/', (req, res)=>{
    res.sendFile(path.join(__dirname + 'index.html'));
})*/



const PORT = process.env.PORT || 3000
app.listen(PORT, ()=>{
    console.log('Listening on port ' + PORT + '...')
    
});

const update_games_hourly = setInterval(() => {
    api.api_update_games();
    console.log("updated");
  }, 1000*60*60*1);

api.api_update_games();
console.log("updated");
update_games_hourly;
//setInterval(api_update('partidos', url_spain_games, 1000*60*60*1));
