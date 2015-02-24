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
    rake db:schema:load

If re-freshing the database (from a previous install) use `rake db:drop` before create and schema:load commands. To obtain the initial CIViC data set and load it use:

    rake civic:import['import/GeneSummaries.txt','import/VariantSummaries.txt','import/ClinActionEvidence.txt','import/VariantGroupSummaries.txt']

Or alternatively you can load the data from an SQL dump as follows:
`rake civic:load`

Finally, start the CIViC rails server

    rails s

Next, you'll need to set up the client side application using the following:

    git clone https://github.com/genome/civic-client.git
    cd civic-client
    npm install -g bower gulp
    npm install
    bower install
    gulp serve

You should now be able to access the backend server at `http://localhost:3000` and the frontend application at `http://localhost:3001`

Note to make yourself an admin in a local install you can do the following from your civic-server repo.
Log into a rails console, run a command that makes you an admin in the db, and exit
`rails c`
`User.first.make_admin!`
`exit`

Then you can log into the backend admin interface as follows:
http://localhost:3000/admin

