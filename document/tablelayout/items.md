# items 出品

| 論理       | 物理       | 種別                     | 制約     | 設定                        | 備考 |
|:---------- |:---------- | ------------------------ | -------- | --------------------------- | ---- |
| ID         | item_id    | bigint(20)               | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |      |
| 名前       | name       | character varying(200)   | NOT NULL | ,                           |      |
| 個数       | number     | integer(1000)            | NOT NULL | ,                           |      |
| カテゴリ−  | category   | integer(3)               | NOT NULL | DEFAULT 0,                  |      |
| 商品状態   | condition  | integer(3)               | NOT NULL | DEFAULT 0,                  |      |
| 出品者ID   | user_id    | bigint(20)               | NOT NULL | ,                           |      |
| 商品詳細   | detail     | character varying(1000)  |          | ,                           |      |
| 画像1      | image_1    | character varying(200)   |          | ,                           |      |
| 画像2      | image_2    | character varying(200)   |          | ,                           |      |
| 画像3      | image_3    | character varying(200)   |          | ,                           |      |
| 画像4      | image_4    | character varying(200)   |          | ,                           |      |
| 画像5      | image_5    | character varying(200)   |          | ,                           |      |
| 画像6      | image_6    | character varying(200)   |          | ,                           |      |
| 画像7      | image_7    | character varying(200)   |          | ,                           |      |
| 画像8      | image_8    | character varying(200)   |          | ,                           |      |
| 画像9      | image_9    | character varying(200)   |          | ,                           |      |
| 画像10     | image_10   | character varying(200)   |          | ,                           |      |
| 削除フラグ | is_delete  | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 追加日時   | created_at | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |      |
| 更新日時   | updated_at | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |      |
