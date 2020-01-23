# favorite お気に入り

| 論理             | 物理       | 種別                     | 制約     | 設定                        | 備考 |
|:---------------- |:---------- | ------------------------ | -------- | --------------------------- | ---- |
| ID               | favorit_id | bigint(20)               | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |      |
| お気に入り商品ID | item_id    | bigint(20)               | NOT NULL | ,                           |      |
| ユーザーID       | user_id    | bigint(20)               | NOT NULL | ,                           |      |
| 削除フラグ       | is_delete  | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 追加日時         | created_at | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |      |
| 更新日時         | updated_at | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |      |
