# follow フォロー

| 論理                 | 物理             | 種別       | 制約     | 設定                        | 備考             |
|:-------------------- |:---------------- | ---------- | -------- | --------------------------- | ---------------- |
| ID                   | follow_id        | bigint(20) | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |                  |
| フォロワーユーザーID | follower_user_id | bigint(20) | NOT NULL | ,                           | フォローする人   |
| フォロイーユーザーID | followee_user_id | bigint(20) | NOT NULL | ,                           | フォローされる人 |
| 削除フラグ           | is_delete        | tinyint(1) | NOT NULL | DEFAULT 0,                  |                  |
| 追加日時             | created_at       | datetime   | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |                  |
| 更新日時             | updated_at       | datetime   | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |                  |
