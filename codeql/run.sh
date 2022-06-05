#!/bin/bash

export TARGET_SOURCE="$HOME/dev/"

rm -rf codeql/results/source_db

docker-compose -f codeql/docker-compose-create-db.yml up
docker-compose -f codeql/docker-compose-analyze.yml up
