#!/bin/sh

./bin/rails db:migrate:reset DISABLE_DATABASE_ENVIRONMENT_CHECK=1 && ./bin/rails db:seed
