FROM ruby:2.5.3 as base

RUN mkdir /app
ADD Gemfile Gemfile.lock /app/
WORKDIR /app
RUN bundle install --binstubs
