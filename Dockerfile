FROM ruby:2.5.3 as base

RUN mkdir /app
ADD Gemfile Gemfile.lock /app/
WORKDIR /app
RUN gem uninstall bundler
RUN gem install bundler
RUN bundle -v
RUN bundle install --binstubs
