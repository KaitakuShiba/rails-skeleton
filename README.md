# README
## Overview
Skeleton before rails new.

## Versions
- Ruby: 2.7.4
- Rails: 6.1.1
- MySQL: 8.0.23

## Command
```bash
$ docker-compose build
$ docker-compose run --rm api rails new . --database=mysql --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-active-storage --skip-active-job --skip-action-cable --skip-jbuilder --skip-sprockets -T -f --api
```
