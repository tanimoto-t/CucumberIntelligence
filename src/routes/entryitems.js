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

const sampleSql1 = 'SELECT CURRENT_TIMESTAMP'
const sampleSql2 = 'SELECT * FROM items'

var connection = require('../utility/pgConnection');

// CallBack型
connection.query(sampleSql1,
  (err, res) => {
    if (err) {
      console.log(err);
    } else {
      console.log('CallBack型')
      console.log(res);
    }
  })

// Promise型
connection.query(sampleSql1)
  .then(res => {
    console.log('Promise型')
    console.log(res);
  })
  .catch(err =>{
    console.log(err);
  })

// DBアクセスサンプル
connection.query(sampleSql2,
  (err, res) => {
    console.log(res);
    connection.end();
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
