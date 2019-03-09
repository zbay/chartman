#!/bin/bash
while !</dev/tcp/postgres/5432; do sleep 1; done; # Postgres service healthcheck
NODE_ENV=$ENV npm run start:prod