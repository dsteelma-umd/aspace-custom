#!/bin/bash

/apps/aspace/archivesspace/scripts/setup-database.sh
if [[ "$?" != 0 ]]; then
  echo "Error running the database setup script."
  exit 1
fi

export ASPACE_INITIALIZE_PLUGINS=aspace-oauth

exec /apps/aspace/archivesspace/archivesspace.sh
