#!/bin/sh

TIMESTAMP=$(date +%Y%m%d%H%M%S)
DATABASE=playground_dev

# Create directory for the data to be dumped into
mkdir -p tmp/db

# Dump the data from the database into the file
pg_dump --clean --if-exists --no-tablespaces --schema-only $DATABASE > tmp/db/$TIMESTAMP-schema.sql
pg_dump --data-only --no-tablespaces --exclude-table=verisons --quote-all-identifiers $DATABASE > tmp/db/$TIMESTAMP-data.sql
