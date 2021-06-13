#!/bin/sh

heroku pg:reset --confirm waqoo2020 -r heroku-dev && heroku run rails db:migrate -r heroku-dev && heroku run rails db:seed -r heroku-dev
