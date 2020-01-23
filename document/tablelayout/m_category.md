# m_category カテゴリーマスタ

| 論理           | 物理           | 種別                     | 制約     | 設定                        | 備考 |
|:-------------- |:-------------- | ------------------------ | -------- | --------------------------- | ---- |
| ID             | category_id    | bigint(20)               | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |      |
| 100の位        | hundreds_place | integer(1)               | NOT NULL | ,                           |      |
| 10の位         | tens_place     | integer(1)               | NOT NULL | ,                           |      |
| 1の位          | ones_place     | integer(1)               | NOT NULL | ,                           |      |
| カテゴリー名称 | category_name  | character varying(20)    | NOT NULL | ,                           |      |
| 削除フラグ     | is_delete      | integer(1)               | NOT NULL | DEFAULT 0,                  |      |
| 追加日時       | created_at     | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |      |
| 更新日時       | updated_at     | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |      |
