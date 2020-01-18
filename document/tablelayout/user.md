# user ユーザー

| 論理                     | 物理         | 種別         | 制約     | 設定                        | 備考                    |
|:------------------------ |:------------ | ------------ | -------- | --------------------------- | ----------------------- |
| ID                       | user_id      | bigint(20)   | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |                         |
| メールアドレス           | email        | varchar(200) | NOT NULL | ,                           |                         |
| パスワード               | password     | varchar(400) | NOT NULL | ,                           |                         |
| 姓                       | last_name    | varchar(20)  | NOT NULL | ,                           |                         |
| 名                       | first_name   | varchar(20)  | NOT NULL | ,                           |                         |
| 性別                     | gender       | tinyint(1)   | NOT NULL | ,                           | 1: 男性 2: 女性         |
| 生年月日                 | birthday     | date         | NOT NULL | ,                           |                         |
| 郵便番号                 | postal_code  | varchar(7)   | NOT NULL | ,                           |                         |
| 住所                     | address      | varchar(200) | NOT NULL | ,                           |                         |
| TEL                      | tel          | varchar(20)  | NOT NULL | ,                           |                         |
| 権限                     | role         | int(2)       | NOT NULL | ,                           | 1: 管理権限 2: 一般権限 |
| 銀行名                   | bank_name    | varchar(100) | NOT NULL | ,                           |                         |
| 支店名                   | branch_name  | varchar(100) | NOT NULL | ,                           |                         |
| 預金種別                 | deposit_type | tinyint(1)   | NOT NULL | ,                           |                         |
| 口座番号                 | bank_number  | varchar(20)  | NOT NULL | ,                           |                         |
| 口座名義カナ             | bank_kana    | varchar(50)  | NOT NULL | ,                           |                         |
| 公開コメント             | coments      | varchar(500) |          | ,                           |                         |
| サムネイル画像           | thumbnail    | varchar(200) |          | ,                           |                         |
| 認証コード               | code         | varchar(200) |          | ,                           |                         |
| メールアドレス確認フラグ | is_confirm   | tinyint(1)   | NOT NULL | DEFAULT 0,                  |                         |
| 更新フラグ               | is_update    | tinyint(1)   | NOT NULL | DEFAULT 0,                  |                         |
| パスワード再設定コード   | reset_code   | varchar(200) |          | ,                           |                         |
| パスワード再設定期限     | reset_limit  | datetime     |          | ,                           |                         |
| 削除フラグ               | is_delete    | tinyint(1)   | NOT NULL | DEFAULT 0,                  |                         |
| 追加日時                 | created_at   | datetime     | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |                         |
| 更新日時                 | updated_at   | datetime     | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |                         |
