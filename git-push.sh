#!/bin/sh

git add . && git status && git commit -m "auto commit" && git push origin master && git push heroku master
