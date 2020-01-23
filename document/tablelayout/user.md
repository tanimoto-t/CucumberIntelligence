# user ユーザー

| 論理                     | 物理         | 種別                     | 制約     | 設定                        | 備考                    |
|:------------------------ |:------------ | ------------------------ | -------- | --------------------------- | ----------------------- |
| ID                       | user_id      | bigint(20)               | NOT NULL | PRIMARY KEY AUTO_INCREMENT, |                         |
| メールアドレス           | email        | character varying(200)   | NOT NULL | ,                           |                         |
| パスワード               | password     | character varying(400)   | NOT NULL | ,                           |                         |
| 姓                       | last_name    | character varying(20)    | NOT NULL | ,                           |                         |
| 名                       | first_name   | character varying(20)    | NOT NULL | ,                           |                         |
| 性別                     | gender       | integer(1)               | NOT NULL | ,                           | 1: 男性 2: 女性         |
| 生年月日                 | birthday     | date                     | NOT NULL | ,                           |                         |
| 郵便番号                 | postal_code  | character varying(7)     | NOT NULL | ,                           |                         |
| 住所                     | address      | character varying(200)   | NOT NULL | ,                           |                         |
| TEL                      | tel          | character varying(20)    | NOT NULL | ,                           |                         |
| 権限                     | role         | integer(2)               | NOT NULL | ,                           | 1: 管理権限 2: 一般権限 |
| 銀行名                   | bank_name    | character varying(100)   | NOT NULL | ,                           |                         |
| 支店名                   | branch_name  | character varying(100)   | NOT NULL | ,                           |                         |
| 預金種別                 | deposit_type | integer(1)               | NOT NULL | ,                           |                         |
| 口座番号                 | bank_number  | character varying(20)    | NOT NULL | ,                           |                         |
| 口座名義カナ             | bank_kana    | character varying(50)    | NOT NULL | ,                           |                         |
| 公開コメント             | coments      | character varying(500)   |          | ,                           |                         |
| サムネイル画像           | thumbnail    | character varying(200)   |          | ,                           |                         |
| 認証コード               | code         | character varying(200)   |          | ,                           |                         |
| メールアドレス確認フラグ | is_confirm   | integer(1)               | NOT NULL | DEFAULT 0,                  |                         |
| 更新フラグ               | is_update    | integer(1)               | NOT NULL | DEFAULT 0,                  |                         |
| パスワード再設定コード   | reset_code   | character varying(200)   |          | ,                           |                         |
| パスワード再設定期限     | reset_limit  | timestamp with time zone |          | ,                           |                         |
| 削除フラグ               | is_delete    | integer(1)               | NOT NULL | DEFAULT 0,                  |                         |
| 追加日時                 | created_at   | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP,  |                         |
| 更新日時                 | updated_at   | timestamp with time zone | NOT NULL | DEFAULT CURRENT_TIMESTAMP   |                         |
