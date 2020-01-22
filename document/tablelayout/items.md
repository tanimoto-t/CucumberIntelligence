# items 出品

| 論理       | 物理       | 種別          | 制約     | 設定                        | 備考 |
|:---------- |:---------- | ------------- | -------- | --------------------------- | ---- |
| ID         | item_id    | bigint(20)    | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |      |
| 名前       | name       | varchar(200)  | NOT NULL | ,                           |      |
| 個数       | number     | int(1000)     | NOT NULL | ,                           |      |
| カテゴリ−  | category   | tinyint(3)  | NOT NULL | DEFAULT 0,                  |      |
| 商品状態   | condition  | tinyint(3)  | NOT NULL | DEFAULT 0,                  |      |
| 出品者ID   | user_id    | bigint(20)    | NOT NULL | ,                           |      |
| 商品詳細   | detail     | varchar(1000) |          | ,                           |      |
| 画像1      | image_1    | varchar(200)  |          | ,                           |      |
| 画像2      | image_2    | varchar(200)  |          | ,                           |      |
| 画像3      | image_3    | varchar(200)  |          | ,                           |      |
| 画像4      | image_4    | varchar(200)  |          | ,                           |      |
| 画像5      | image_5    | varchar(200)  |          | ,                           |      |
| 画像6      | image_6    | varchar(200)  |          | ,                           |      |
| 画像7      | image_7    | varchar(200)  |          | ,                           |      |
| 画像8      | image_8    | varchar(200)  |          | ,                           |      |
| 画像9      | image_9    | varchar(200)  |          | ,                           |      |
| 画像10     | image_10   | varchar(200)  |          | ,                           |      |
| 削除フラグ | is_delete  | tinyint(1)    | NOT NULL | DEFAULT 0,                  |      |
| 追加日時   | created_at | datetime      | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |      |
| 更新日時   | updated_at | datetime      | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |      |
