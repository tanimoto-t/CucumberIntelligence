/*
 * ルーティング処理
 */

"use strict";

var itemName;
var itemDescription;
var category;
var condition;
var startDate;
var endDate;

var { Client } = require('pg');

var client = new Client({
    user: 'cucumber',
    host: 'localhost',
    database: 'CucumberIntelligence',
    password: 'Password12',
    port: 5432
})

client.connect()

client.query('SELECT CURRENT_TIMESTAMP',
  (err, res) => {
    console.log(res);
    console.log(err);
    // client.end();
  })

client.query('SELECT * FROM items',
  (err, res) => {
    console.log(res);
    console.log(err);
    client.end();
  })


class Index {
    constructor() {}

    index(req, res) {
        res.render('entryitems.ejs', {
            title: "商品登録画面"
        });
    }
}

module.exports = new Index();
