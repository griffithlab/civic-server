#!/usr/bin/env bash

set -e
set -u # unset variables throw error
set -o pipefail # pipes fail when partial command fails

bundle update --bundler

# Note: make sure env $DATABASE_* items are set!

# Attempt connect to db and if
# it fails, then assume db does not exist and
# db creation should be executed:
if PGPASSWORD=$DATABASE_PASSWORD psql -lqt -U$DATABASE_USER -h$DATABASE_HOST | cut -d \| -f 1 | grep -q civic; then
    echo "civic database already exists. Skipping database initialisation."
else
    echo "Creating civic database"
    rake db:create

    echo "Migrating civic database"
    # migrate:
    rake db:migrate

    echo "Loading a recent database backup"
    # unpack ./db/data.sql.gz (required before loading data dump):
    gunzip ./db/data.sql.gz
    # load the sanitized version of a recent database backup found in ./db:
    rake civic:load[force]
    echo "Done"
fi

rails s
