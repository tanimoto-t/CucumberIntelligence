/*
 * ルーティング処理
 */

"use strict";

class Index {
    constructor() {}

    index(req, res) {
        res.render('index.ejs', {
            message: "Hello World!"
        });
    }
}

module.exports = new Index();
