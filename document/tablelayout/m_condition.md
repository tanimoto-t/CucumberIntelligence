# m_category カテゴリーマスタ

| 論理           | 物理           | 種別        | 制約     | 設定                        | 備考 |
|:-------------- |:-------------- | ----------- | -------- | --------------------------- | ---- |
| ID             | condition_id   | bigint(20)  | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |      |
| 100の位        | hundreds place | tinyint(1)  | NOT NULL | ,                           |      |
| 10の位         | tens place     | tinyint(1)  | NOT NULL | ,                           |      |
| 1の位          | ones place     | tinyint(1)  | NOT NULL | ,                           |      |
| カテゴリー名称 | condition_name | varchar(20) | NOT NULL | ,                           |      |
| 削除フラグ     | is_delete      | tinyint(1)  | NOT NULL | DEFAULT 0,                  |      |
| 追加日時       | created_at     | datetime    | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |      |
| 更新日時       | updated_at     | datetime    | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |      |
