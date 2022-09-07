FROM ruby:3.1.2-slim-bullseye
# gitはrails newで必要
RUN apt-get update && apt-get install -y build-essential libpq-dev git

ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle -j 8

WORKDIR /app
COPY . /app
