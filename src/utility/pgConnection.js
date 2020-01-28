/*
 *  DB通信処理
 */

"use strict";

var { Client } = require('pg');

var dbConfig = {
    user: 'cucumber',
    host: 'localhost',
    database: 'CucumberIntelligence',
    password: 'Password12',
    port: 5432
}

var client = new Client({
    user: 'cucumber',
    host: 'localhost',
    database: 'CucumberIntelligence',
    password: 'Password12',
    port: 5432
});
client.connect();


module.exports = client;
