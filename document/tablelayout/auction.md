# auction オークション

| 論理           | 物理                       | 種別                     | 制約     | 設定                        | 備考 |
|:-------------- |:-------------------------- | ------------------------ | -------- | --------------------------- | ---- |
| ID             | auction_id                 | bigint(20)               | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |      |
| 出品ID         | item_id                    | bigint(20)               | NOT NULL | ,                           |      |
| 開始日時       | start_date                 | timestamp with time zone | NOT NULL | ,                           |      |
| 終了日時       | end_date                   | timestamp with time zone | NOT NULL | ,                           |      |
| 自動延長       | auto_extenstion            | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 早期終了       | early_termination          | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 返品           | retuens                    | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 入札者評価制限 | appraisal_restriction      | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 入札者認証制限 | authentication_restriction | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 開始価格       | start_price                | integer(100)             | NOT NULL | ,                           |      |
| 即決価格       | buyout_price               | integer(100)             |          | ,                           |      |
| 削除フラグ     | is_delete                  | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 追加日時       | created_at                 | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |      |
| 更新日時       | updated_at                 | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |      |
