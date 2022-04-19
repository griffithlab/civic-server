#!/usr/bin/env bash

set -e
set -u # unset variables throw error
set -o pipefail # pipes fail when partial command fails

# make sure env $DATABASE_* items are set!
# Attempt connect to db:
psql postgresql://[$DATABASE_USER[:$DATABASE_PASSWORD]@][$DATABASE_HOST][:5432][/civic]

# If it fails, then assume db does not exist and
# db creation should be executed:
# TODO - add IF
if ....
    rake db:create

    # migrate:
    rake db:migrate

    # load the sanitized version of a recent database backup found in ./db:
    rake civic:load[force]
fi

rails s

# TODO - add this .sh as entrypoint in the Dockerfile...
