FROM ruby:2.7.4-slim-buster
RUN apt-get update && apt-get install -y build-essential default-libmysqlclient-dev

ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle -j 8

WORKDIR /app
COPY . /app
