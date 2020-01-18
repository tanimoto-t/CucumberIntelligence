/*
 * ルーティング処理
 */

"use strict";

class Index {
    constructor() {}

    index(req, res) {
        res.render('entryitems.ejs', {
            title: "商品登録画面"
        });
    }
}

module.exports = new Index();
