# successful_bid 落札

| 論理       | 物理              | 種別                     | 制約     | 設定                        | 備考 |
|:---------- |:----------------- | ------------------------ | -------- | --------------------------- | ---- |
| ID         | successful_bid_id | bigint(20)               | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |      |
| 出品ID     | item_id           | bigint(20)               | NOT NULL | ,                           |      |
| 落札者ID   | user_id           | bigint(20)               | NOT NULL | ,                           |      |
| 落札金額   | amount            | integer(100)             | NOT NULL | ,                           |      |
| 削除フラグ | is_delete         | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 追加日時   | created_at        | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |      |
| 更新日時   | updated_at        | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |      |
