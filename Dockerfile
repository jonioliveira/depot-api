FROM ruby:3.2.0 AS base

WORKDIR /usr/src/app

COPY . .

RUN bundle install
