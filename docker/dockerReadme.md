# Dockerの説明
前提として、コマンドの入力は、以下の環境を想定しています。
* Windows ： PowerShell
* Mac     ： ターミナル
## きゅうり用のDockerを起動する方法

1. dockerフォルダに移動。
```
$ cd D:\Project\CucumberIntelligence\docker
```
2. dockerコンテナー起動
```
$ docker-compose up -d
```
3. ブラウザから以下のURLに接続(pgAdmin接続)
* http://localhost:8000/login
4. サーバを追加
```
新しいサーバを追加　⇒　作成 - サーバ画面表示
[一般]タブ
　名称：きゅうり
[接続]タブ
　ホスト名/アドレス：db
  管理用データベース：CucumberIntelligence
  ユーザ名：cucumber
  パスワード：Password12
```
4. DBに直接アクセス
```
$ docker exec -ti postgre12.1 bash
$ psql -U cucumber -d CucumberIntelligence
```

## きゅうり用のDockerを一括削除する方法
1. dockerコンテナー状態確認
```
$ docker ps -a
```
2. dockerコンテナー一括停止
```
$ docker stop $(docker ps -a -q)
```
* オプション：-q は、docker IDの情報のみ表示という意味です。または、起動しているdockerのみ表示。

3. dockerコンテナー一括削除
```
$ docker rm $(docker ps -a -q)
```
4. dockerボリューム一括削除
```
$ docker volume prune
 ⇒本当に削除するか聞かれるので「y」を入力/実行
```


# Dockerの補足説明
## Docker Composeの起動方法
1. dockerフォルダに移動。
```
$ cd D:\Project\CucumberIntelligence\docker
```
 * 後述しているPathは、CloneしたPathに合わせて記述を変更してください。
2. ymlファイルの存在確認。
```
$ ls .\docker-compose.yml # Windows用
$ ls -l .\docker-compose.yml # Mac用
```
 * 実行しても、しなくてもOK。なお、Mac使ってる人は、ls -lのほうが見やすい。
3. dockerコンテナー起動
```
$ docker-compose up -d
```
 * 初回実行の場合、イメージのダウンロードとコンテナの作成 and 起動が行われる。


## Docker コンテナーのデータ保存
>コンテナ内で作成されたデータは、コンテナを削除すると消える仕様。そのため、データを保持するには、データボリュームを使用して、データを永続化する。下記には、データボリュームの操作方法を記述する。


### Data Volume
1. データボリュームが作成されていることを確認するコマンド
```
$ docker volume ls
```
2. データボリューム作成コマンド
```
$ docker volume create postgre12.1
```
3. 作成後、データボリュームの詳細情報を参照するコマンド
```
$ docker volume inspect postgre12.1
```
4. データボリューム削除コマンド
```
$ docker volume rm postgre12.1Volume
```


### Data Volume Container
> データボリューム・コンテナは、データボリュームがマウントされているコンテナから、新たにコンテナを作成する方法。そのため、本件では、割愛。#使用しないため。。。。

### Docker コマンド
+ [container編](https://qiita.com/supaiku2452/items/da44b05c4ba4ec13bccf)
