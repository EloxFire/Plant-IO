var mysql = require('mysql');

var connection = mysql.createConnection({
host     : "localhost",
user     : "root",
password : null,
database : "plantio_db"
});

var selectQuery = 'SELECT * FROM infos_plantes';

connection.query(
selectQuery,
function select(error, results, fields) {
if (error) {
console.log(error);
connection.end();
return;
}

if ( results.length > 0 )  {

let selectPlant = document.getElementsByClassName('affichage-requete__plant')[0];
console.log('selectplant',selectPlant);


for (var i = 0; i < results.length; i++) {

  let opt = document.createElement('option');
  opt.innerHTML = results[i].nom;
  opt.value = results[i].nom;
  console.log(idPlant);
  selectPlant.appendChild(opt);
  console.log('result.nom : ',results[i])
  let selectPlant__cat = results[i].categorie;
  let selectPlant__desc = results[i].description;
  let selectPlant__humi = results[i].humi_opti;
  let selectPlant__temp = results[i].temp_opti;
  let selectPlant__lumi = results[i].lumi_opti;
  let selectPlant__floraison = results[i].periode_floraison;

}


(function() {

// get references to select list and display text box
var sel = document.getElementsByClassName('affichage-requete__plant')[0];
var el = document.getElementById('nom');


function getSelectedOption(sel) {
var opt;
for ( var i = 0, len = sel.options.length; i < len; i++ ) {
  opt = sel.options[i];
  if ( opt.selected === true ) {
      break;
  }
}
return opt;
}

document.getElementById('showTxt').onclick = function () {
// access text property of selected option
let actualPlant = sel.options[sel.selectedIndex].text;
el.innerHTML = actualPlant;
document.getElementById('idPlant').innerHTML
document.getElementById('cat').innerHTML = selectPlant__cat;
document.getElementById('description-plante').innerHTML = selectPlant__desc;
document.getElementById('humi_db').innerHTML = selectPlant__humi;
document.getElementById('temp_db').innerHTML = selectPlant__temp;
document.getElementById('lumi_db').innerHTML = selectPlant__lumi;
document.getElementById('floraison').innerHTML = selectPlant__floraison;

}
}());



} else {
console.log("Pas de données");
}
connection.end();
}
);
