#!/bin/bash
while !</dev/tcp/postgres/5432; do sleep 1; done; # Postgres service healthcheck
npm run start:prod