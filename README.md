# CIViC - Clinical Interpretation of Variants in Cancer

[![Code Climate](https://codeclimate.com/github/genome/civic-server/badges/gpa.svg)](https://codeclimate.com/github/genome/civic-server)

This repository contains the server component of the CIViC. It is a Ruby on Rails application that serves JSON data to power the [frontend website](https://github.com/genome/civic-client) and [API](https://genome.github.io/civic-api-docs/).

### Setup

Developing for CIViC involves setting up a development environment.

To get started quickly, we recommend launching an AWS EC2 instance from our pre-configured and maintained AMI ([getting started wiki page](https://github.com/genome/civic-server/wiki/Getting-Started-with-CIViC-Development-on-AWS)). Alternatively, you may set up your own local development environment using the following setup instructions.

#### Prerequisites

Before attempting to install the CIViC server and client software, you should obtain the following applications and libraries:

 * A relatively modern Ruby (>= 2.1)
    * If your OS doesn't ship with a modern Ruby, you can use [rbenv](https://github.com/sstephenson/rbenv) and [ruby-build](https://github.com/sstephenson/ruby-build) to obtain it.
 * Postgres
 * NodeJS
 * npm
 * libxml2
 * libxslt
 * libpq-dev
 * openssl

On OSX with homebrew, this should install the needed library dependencies: 

    brew install libxml2 libxslt openssl postgres node

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

For convenience, a sanitized version of a recent database backup is provided for your local development environment. You can load it with the following command:

    rake civic:load

Finally, start the CIViC rails server

    rails s

If you only intend to do server development, you can stop here. The server repository already contains the most recent production build of the frontend javascript. You can load CIViC in your browser at `http://127.0.0.1:300`.

If you intend to develop front end features however, you'll need to set up the [client side application](https://github.com/genome/civic-client) using the following:

    git clone https://github.com/genome/civic-client.git
    cd civic-client
    npm install -g bower gulp
    npm install
    bower install
    gulp serve

You should now be able to access the backend server at `http://127.0.0.1:3000` and the frontend application at `http://127.0.0.1:3001`

Note that certain tasks needed by a running instance of CIViC are accomplished by 'background workers'. This includes data release generation as well as notification delivery.

You can start the workers in the background with the following command:

    bin/delayed_job start 

If you would prefer the workers to run in the foreground you can start them in a console (`rails c`) with this command instead:

    Delayed::Worker.new.start

Note to make yourself an admin in a local install you can do the following from your civic-server repo.
First log into the front end `http://127.0.0.1:3001` and sign in with your user.
Log into a rails console, run a command that makes you an admin in the db, and exit.

    rails c
    User.find_by(email: 'your_email@example.com').make_admin!
    exit

Now log into the backend admin interface as follows:
http://127.0.0.1:3000/admin

