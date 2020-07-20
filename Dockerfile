FROM ruby:2.5.3 as base

ADD Gemfile Gemfile.lock /down-webapp/
RUN bundle install --binstubs
