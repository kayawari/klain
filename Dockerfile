FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /klain
WORKDIR /klain
COPY Gemfile /klain/Gemfile
COPY Gemfile.lock /klain/Gemfile.lock
RUN bundle install
COPY . /klain
