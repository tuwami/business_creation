#!/bin/sh

git add . && git status && git commit -m "auto commit" && git push origin development && git push heroku-dev development:master
