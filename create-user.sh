#!/usr/bin/env bash

echo "CREATING MONGO USER..."

mongo $DB_NAME\
  --authenticationDatabase admin\
  --host localhost\
  -u $MONGO_INITDB_ROOT_USERNAME\
  -p $MONGO_INITDB_ROOT_PASSWORD\
  --eval "db.createUser({user: '$DB_USER', pwd: '$DB_PASSWORD', roles: [{ role: 'readWrite', db: '$DB_NAME' }]});"

echo "MONGO USER CREATED"