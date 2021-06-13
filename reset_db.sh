#!/bin/sh

heroku pg:reset --confirm waqoo2020 -r heroku && heroku run rails db:migrate -r heroku && heroku run rails db:seed -r heroku
