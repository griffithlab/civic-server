# CIViC - Clinical Interpretation of Variants in Cancer

[![Code Climate](https://codeclimate.com/github/genome/civic-server/badges/gpa.svg)](https://codeclimate.com/github/genome/civic-server)
[![Build Status](https://travis-ci.org/genome/civic-server.svg)](https://travis-ci.org/genome/civic-server)
[![Coverage Status](https://img.shields.io/coveralls/genome/civic-server.svg)](https://coveralls.io/r/genome/civic-server)

### Setup

#### Prerequisites

Before attempting to install the CIViC client and server software, you should obtain the following applications and libraries:

 * A relatively modern Ruby (>= 1.9.3)
    * If your OS doesn't ship with a modern Ruby, you can use [rbenv](https://github.com/sstephenson/rbenv) and [ruby-build](https://github.com/sstephenson/ruby-build) to obtain it.
 * Postgres
 * NodeJS
 * npm
 * libxml2
 * libxslt
 * libpq-dev
 * openssl

On OSX with homebrew, this should install the needed library dependencies: `brew install libxml2 libxslt openssl postgres node`

#### Installation
The following will set up the server side application and load the database schema.

    git clone https://github.com/genome/civic-server.git
    cd civic-server
    gem install bundler
    rbenv rehash
    bundle install
    rbenv rehash
    rake db:create
    rake db:migrate
    rails s

You will want to obtain the initial CIViC data set and load it using `rake civic import`. Contact the authors for a copy.

Next, you'll need to set up the client side application using the following:

    git clone https://github.com/genome/civic-client.git
    cd civic-client
    npm install -g bower gulp
    npm install
    bower install
    gulp serve

You should now be able to access the backend server at `http://localhost:3000` and the frontend application at `http://localhost:3001`

For testing purposes (and so you don't have to set up OAuth credentials), you can log in as a normal or admin user by visiting `http://localhost:3000/mock_normal_user` or `http://localhost:3000/mock_admin_user`