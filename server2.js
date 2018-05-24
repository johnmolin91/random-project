// Initializes the npm packages used
var mysql = require("mysql");
var inquirer = require("inquirer");
require("console.table");

// Initializes the connection variable to sync with a MySQL database
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "nbaplayerstats18playoffsadv"
});

// Creates the connection with the server and loads the product data upon a successful connection
connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
  }
  loadPlayers();
});

// Function to load the products table from the database and print results to the console
function loadPlayers() {
  // Selects all of the data from the MySQL products table
  connection.query("SELECT Player, PER AS rawAdv FROM playersadvanced WHERE Tm ='BOS' OR Tm='CLE' ORDER BY rawAdv DESC LIMIT 200", function(err, res) {
    if (err) throw err;

    // Draw the table in the terminal using the response
    console.table(res);
  });
}