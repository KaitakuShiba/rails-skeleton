# README
## Overview
Skeleton before rails new.

## Versions
- Ruby: 3.1.2
- Rails: 7.0.3.1
- PostgreSQL: 14.5

## Command
```bash
$ cp -r ~/Projects/rails-skeleton ~/Projects/hello-rails7
$ docker-compose build
$ docker-compose run --rm api rails new . --database=postgresql --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-active-storage --skip-active-job --skip-action-cable --skip-jbuilder --skip-sprockets --skip-keeps -T --api
# database.ymlを書き換える
username: <%= ENV.fetch("DB_USER") %>
password: <%= ENV.fetch("POSTGRES_PASSWORD") %>
host: db
port: 5432

# ビルドしなおす
$ docker-compose build
$ docker-compose up
$ docker-compose run --rm api bin/rails db:create
# .gitignoreにdbを入れておく
```
