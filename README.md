## Redmineの開発環境っぽいやつです

### 起動など

```sh
# 起動
$ docker-compose up

# 停止
$ docker-compose stop

# 完全停止
$ docker-compose down
```

### 起動するサービスコンテナ

* app
Redmine3.4が立ち上がります

* db
MySQL5.7が立ち上がります

### プラグインについて

plugins ディレクトリにRedmineのプラグインを入れてから起動してください
DBのマイグレートまで行って起動します


### DBのデータの永続化について

mysql/data ディレクトリをマウントしているため、データはコンテナが削除されても永続化されたままとなります。
初期化や消す必要がある場合は

```sh
$ rm -rf mysql/data/*
```

などで削除してください

### Gemを追加したい場合

Redmineは Gemfile.localというファイルをカレントディレクトリに置いておくとbundle install をかけた時に自動的にそのgemもインストールされます。
このリポジトリに用意されている Gemfile.localに追加したいgemを追加すると、一緒にインストールしてくれるようになっているので、そこに記載お願いしますmm

このリポジトリの構成の場合(デフォルトのredmineイメージを利用しているため)、developmentとtestのgroupのgemは読み込まれませんのでgroupでくくらずに Gemfile.localにベタで記載してくださいmm
