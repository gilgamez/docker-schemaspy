#!/bin/sh

java -jar schemaspy-$SSV.jar \
  -t pgsql -dp postgresql-$PGV.jar \
  -host $HOST -db $DATABASE_NAME \
  -o /output \
  ${@}

