/*
 * サーバ側メイン処理
 */

"use strict";

const express = require('express');
const ejs = require('ejs');
const routes = require('./routes');
const app = express();

// テンプレの場所
app.set('views', __dirname + '/../template/views');

// テンプレートにejsを使う
app.engine('ejs', ejs.renderFile);

// 静的ファイルの場所
app.use(express.static('template'));

app.get('*', routes.index);

app.listen(8989, function() {
    console.log("Start!\n> http://localhost:8989/");
});
