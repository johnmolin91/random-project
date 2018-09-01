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
  database: "nba2017advancedteamdb"
});

// Creates the connection with the server and loads the product data upon a successful connection
connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
  }
  loadPlayers();
});

    // Need a formula that factors in opponent's defense, pace, and likelihood of blowout between the two teams. May need to hold two queries, one for defense+pace and one that compares margins of both teams.

// Function to load the products table from the database and print results to the console
function loadPlayers() {
  // Selects all of the data from the MySQL products table
  connection.query("SELECT team, (drtg + pace) AS drtgpace FROM nba2017advancedteamstats ORDER BY drtgpace DESC LIMIT 30", function(err, res) {
    if (err) throw err;

    // Draw the table in the terminal using the response
    console.table(res);
  });
}