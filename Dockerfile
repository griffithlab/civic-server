FROM ruby:2

RUN apt-get update
RUN apt-get install -y rbenv libxml2 libxslt-dev openssl nodejs postgresql-client
COPY $PWD /civic-server
WORKDIR /civic-server
RUN gem install bundler
RUN bundle update --bundler
RUN rbenv rehash
RUN bundle install
RUN rbenv rehash
