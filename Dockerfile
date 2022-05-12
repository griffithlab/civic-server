FROM ruby:2

RUN apt-get update
RUN apt-get install -y rbenv libxml2 libxslt-dev openssl nodejs postgresql-client
RUN gem install bundler

#RUN mkdir /civic-server
#RUN cd /civic-server && bundle install

COPY Gemfile /civic-server/Gemfile
COPY Gemfile.lock /civic-server/Gemfile.lock

RUN cd /civic-server && bundle update --bundler && rbenv rehash && bundle install

COPY $PWD /civic-server
WORKDIR /civic-server

ENTRYPOINT ["/civic-server/docker-entrypoint.sh"]
